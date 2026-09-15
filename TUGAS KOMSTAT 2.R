# Tugas Dataset Iris

# 1. Tampilkan Sepal.Length
data(iris)
iris$Sepal.Length


# 2. Tipe data setiap kolom
sapply(iris, class)
str(iris)

# 3. Membuat variabel turunan dari Sepal.Width
# Besar jika Sepal.Width > 3
# Kecil jika Sepal.Width <= 3
iris$turunan <- ifelse(iris$Sepal.Width > 3, "Besar", "Kecil")
head(iris)
library(dplyr)
iris <- iris %>%
  mutate(
    turunan = ifelse(iris$Sepal.Width > 3, "Besar", "Kecil")
  )
head(iris)

# 4. Mengubah nama variabel turunan menjadi sepal
names(iris)[names(iris) == "turunan"] <- "sepal"


# 5. Mengambil data sepal Besar dari spesies virginica
data_virginica <- filter(iris, sepal == "Besar", Species == "virginica")
print(data_virginica)


# 6. Mengecek jumlah spesies
table(iris$Species)


# 7. Memecah data menjadi 3 data frame berdasarkan spesies
iris_setosa <- iris[iris$Species == "setosa", ]

iris_versicolor <- iris[iris$Species == "versicolor", ]

iris_virginica <- iris[iris$Species == "virginica", ]


# 8. Mengurutkan setiap data frame berdasarkan Sepal.Width
iris_setosa <- iris_setosa[
  order(iris_setosa$Sepal.Width),
]

iris_versicolor <- iris_versicolor[
  order(iris_versicolor$Sepal.Width),
]

iris_virginica <- iris_virginica[
  order(iris_virginica$Sepal.Width),
]

iris_setosa_urut <- iris_setosa[order(iris_setosa$Sepal.Width), ]
iris_versicolor_urut <- iris_versicolor[order(iris_versicolor$Sepal.Width), ]
iris_virginica_urut <- iris_virginica[order(iris_virginica$Sepal.Width), ]
#hasil
print(iris_setosa_urut)
print(iris_versicolor_urut)
print(iris_virginica_urut)
# Menampilkan hasil
iris_setosa
iris_versicolor
iris_virginica