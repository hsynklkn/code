### Vectors
x = c(2,5,7)
x
y = seq(from=4, length=3,by=3)
y
z = seq(from=4, to=10, by=2)
z
x+y
x[2]
x[-2] # ikinci elemanı vektoreden kaldırır
x[-c(1,2)]

#### Matrix
z = matrix(seq(1,12),4,3) # 3' e 4l bir matrix oluşturur.
z
z[3:4, 2:3]
z[,2:3]
z[,1] # Buranın çıktısı bir vektör olur matrix statüsü düşer.
# Bunu engelleme için:
z[ ,1 , drop=FALSE] # Tek boyutlu vektöörmüz halen bir matrix.

dim(z) # boyutunu gösterir.
ls()   # Çalıştğımız uzantıda hangi değişenlerin olduğunu gösterir.
rm(y)  # y değişkenini çalştğımız yerden kaldırır.
ls()   # artık y değişkenimiz yok.

### Rasgele normal dağlımlı ve uniq dağılımlı değişkenler oluşturma, graphics
x = runif(50) # 0.1 li ondalıklı uniform değişkenleri oluşturur.
y = rnorm(50) # 50 standart rasgele normal dağılımlı değişken oluşturur.

### Bu x ve y nin grafiklerini oluşturalım.
plot(x,y)
# Şimdide grafiğimize özellik ekleyelim
plot(x, y, xlab = "Random Uniform", ylab = "Random Normal", pch = "*", col = "blue")

# Şimdi hem nokta grafiğini hemde histogram grafiğini aynı anda gösterelim. 
par(mfrow=c(2,1))
plot(x,y)
hist(y)

# par(mfrow=c(2,1)) ile ikiye böldüğümüz bölmeyi tekrar eski haline getirmeliyiz.
par(mfrow=c(1,1))

# Dosya okuma.
auto = read.csv("Auto.csv")
# Verimizin içinde bulunan değişenler 
names(auto)
# Boyutuna bakalm:
dim(auto)
# Verimizin tipine bakalım:
class(auto)
# Şimdide istatiksel özetine bakalım:
summary(auto)

# Şimdi verideki cylinder ve mpg verilerini grafik olarak çizdirelim.
plot(auto$cylinders, auto$mpg)
plot(auto$cyl, auto$mpg)

# veri setindeki değişkenlere direk erişmek için attach fonksiyonunu kullanalım:
attach(auto)
# Değişkenlerimizi burada görebiliriz:
search()

# veri setindeki değişenlere direk ulaşabildiğğimiz için $ işaretine gerek yok.
plot(cylinders, mpg)

# bu plot(cylinders, mpg) boxplot cizdirmezse cylinders değişkenini vektöre çevir
cylinders = as.factor(cylinders)
