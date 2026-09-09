# 1. Vektor numeric
uts_kom <- c(85.5, 78.0, 92.5, 88.0)
uts_kom

# 2. Vektor integer
no_urut <- c(1L, 2L, 3L, 4L, 5L)

# 3. Vektor logical
lulus <- uts_kom > 80
lulus

# 4. Matrix 4x4
matriks <- matrix(uts_kom, nrow = 4, ncol = 4)
matriks

# 5. Array
array_nilai <- array(uts_kom, dim = c(2, 2, 1))
array_nilai

# 6. Data Frame
df <- data.frame(
  Nama = c("Aji", "Budi", "Citra", "Dina"),
  Nilai = c(85.5, 78.0, 92.5, 88.0),
  No = c(1L, 2L, 3L, 4L),
  Lulus =  uts_kom > 80
)
df

# Membuat list
mylist <- list(
  angka = uts_kom,
  nomor = no_urut,
  data = df,
  
  # List di dalam list
  list_dalam = list(
    angka = uts_kom,
    nomor = no_urut,
    data = df
  )
)

mylist