# SOAL 1: DISTRIBUSI POISSON
lam <- 3
nilai_x <- 0:12
peluang <- dpois(nilai_x, lambda = lam)

# Menghitung peluang
peluang_4 <- ppois(4, lambda = lam)
peluang_5 <- 1 - peluang_4

# Menampilkan hasil
cat("P(X <= 4) =", round(peluang_4, 4), "\n")
cat("P(X >= 5) =", round(peluang_5, 4), "\n")

# Visualisasi
plot(nilai_x, peluang,
     type = "h",
     lwd = 3,
     col = ifelse(nilai_x < 5, "blue", "red"),
     main = "Distribusi Poisson dengan Lambda = 3",
     xlab = "Nilai X",
     ylab = "Peluang")

legend("topright",
       legend = c("X < 5", "X >= 5"),
       col = c("blue", "red"),
       lwd = 3,
       bty = "n")

# SOAL 2: DISTRIBUSI HIPERGEOMETRIK
populasi <- 100
merah <- 20
sampel <- 10

# Menentukan kemungkinan nilai X
batas_bawah <- max(0, sampel + merah - populasi)
batas_atas <- min(sampel, merah)
nilai_k <- batas_bawah:batas_atas

# Menghitung PMF
probabilitas <- dhyper(
  nilai_k,
  m = merah,
  n = populasi - merah,
  k = sampel
)

# Menampilkan tabel peluang
hasil <- data.frame(
  k = nilai_k,
  probabilitas = probabilitas
)

print(hasil)

# Membuat grafik
plot(nilai_k, probabilitas,
     type = "h",
     lwd = 3,
     main = paste("Hypergeometric(N =", populasi,
                  ", K =", merah, ", n =", sampel, ")"),
     xlab = "Jumlah bola merah",
     ylab = "P(X = k)")

# SOAL 3: DISTRIBUSI BINOMIAL
jumlah_percobaan <- 15
prob_sukses <- 0.4
nilai <- 0:jumlah_percobaan

# Peluang berdasarkan distribusi binomial
teori <- dbinom(
  nilai,
  size = jumlah_percobaan,
  prob = prob_sukses
)

# Membuat data simulasi
set.seed(123)
hasil_simulasi <- rbinom(
  1000,
  size = jumlah_percobaan,
  prob = prob_sukses
)

# Histogram hasil simulasi
hist(hasil_simulasi,
     breaks = seq(-0.5, jumlah_percobaan + 0.5, by = 1),
     freq = FALSE,
     main = "Simulasi Distribusi Binomial",
     xlab = "Nilai X",
     ylab = "P(X = k)")

# Menambahkan PMF teoritis
points(nilai, teori,
       type = "h",
       lwd = 3,
       col = "red")