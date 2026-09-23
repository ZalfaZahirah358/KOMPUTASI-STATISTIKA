# 1. Membuka data airquality
data(airquality)

# Melihat data
airquality

# Melihat struktur data
str(airquality)


# 2. Histogram variabel Wind + Density
library(ggplot2)

ggplot(airquality, aes(x = Wind)) +
  geom_histogram(aes(y = after_stat(density)),
                 bins = 10,
                 fill = "skyblue",
                 color = "black") +
  geom_density(color = "red", linewidth = 1) +
  labs(title = "Histogram dan Density Wind",
       x = "Wind",
       y = "Density")


# 3. Boxplot variabel Wind
boxplot(airquality$Wind,
        main = "Boxplot Wind",
        ylab = "Wind")


# Stem-and-leaf variabel Wind
stem(airquality$Wind)


# 4. Scatter plot
plot(airquality$Wind,
     airquality$Ozone,
     main = "Scatter Plot Wind dan Ozone",
     xlab = "Wind",
     ylab = "Ozone",
     pch = 19)