source("C:/Users/bombi.LIWE/Documents/puacza/eksploracja/eksplo.r")

#przykl1
rnorm(10000)
y<-rnorm(10000)
hist(y)
hist(y,40)

#przykl2
i = iris
ls.str(i)
i$Petal.Width
i$Petal.Width[i$Species=="setosa"]
#zad.1
a<-rnorm(i$Petal.Width)
b<-rnorm(i$Petal.Length)
c<-rnorm(i$Sepal.Width)
d<-rnorm(i$Sepal.Length)
e<-rnorm(i$Species)
hist(a)
hist(b)
hist(c)
hist(d)
hist(e)
f<-(i$Petal.Length[i$Species=="virginica"])
g<-(i$Petal.Length[i$Species=="setosa"])
h<-(i$Petal.Length[i$Species=="versicolor"])
hist(f)
hist(g)
hist(h)
#roznia sie dlugoscia lisci, virginica ma najdluzsze liscie
#a setosa najkrotsze


#przykl 3
s<-read.table("C:/Users/bombi.LIWE/Documents/puacza/eksploracja/samochody.dat")
plot(s$m[,1],s$m[,2])


####################
mtcars
iris
s<-mtcars
str(s)
t<-read.table("C:/Users/bombi.LIWE/Documents/puacza/eksploracja/golf.dat")
t
View(s)

#przykl 2
s@mpg
s$mpg
s[1,1]
s[1,2]
s[,6]
s[,c(2,3)]
s[4,]
s$gear==3
View(i)
i$Species == "virginica"
i[i$Species=="virginica", "Petal.Length"]
s[s$gear==3,]
z<-max(s$mpg)
s[s$mpg==z,]
View(s)
z<-((s$cyl=4))
s[s$cyl==z,]


#przykl 3
s<-read.table("C:/Users/bombi.LIWE/Documents/puacza/eksploracja/samochody.dat")
head(s)
plot(s$predkosc,s$zpaliwa)
dev.new()
plot(s$predkosc,s$zpaliwa,col=s$typ,pch=16)

#przykl 4
scatterplot3d::scatterplot3d(s$predkosc,s$zpaliwa,s$moc, color=as.numeric(s$typ),pch=16)

#przykl 5
pairs(s[,1:3])
dev.new()
pairs(s[,1:3],pch=21,bg=s[,4])

#przykl 6
i=iris
#zad.3
pairs(i[,1:3])
pairs(i[,1:4],pch=21,bg=i[,5])
#zaleznosc miedzy rozmiarem platka a gatunkiem irysa

#przykl 7
pokaz(s)
pokaz(s,dec=0)
pokaz(s,opis=c(2,3))

#przykl 9
x1=8*runif(100)+10
x2=2*runif(100)+5
boxplot(x1,x2)
#pyt 1
#zalezy, jesli maja takie same wartosci liczbowe 
#dla roznych badanych obiektow - to tak

#przykl 10
m<-read.table("C:/Users/bombi.LIWE/Documents/puacza/eksploracja/md1.dat")
histbox(m)

#zad 4
m1<-read.table("C:/Users/bombi.LIWE/Documents/puacza/eksploracja/md1.dat")
m2<-read.table("C:/Users/bombi.LIWE/Documents/puacza/eksploracja/md2.dat")
m3<-read.table("C:/Users/bombi.LIWE/Documents/puacza/eksploracja/md3.dat")
m4<-read.table("C:/Users/bombi.LIWE/Documents/puacza/eksploracja/md4.dat")
m5<-read.table("C:/Users/bombi.LIWE/Documents/puacza/eksploracja/md5.dat")
m6<-read.table("C:/Users/bombi.LIWE/Documents/puacza/eksploracja/md6.dat")
m7<-read.table("C:/Users/bombi.LIWE/Documents/puacza/eksploracja/md7.dat")
m8<-read.table("C:/Users/bombi.LIWE/Documents/puacza/eksploracja/md8.dat")
m9<-read.table("C:/Users/bombi.LIWE/Documents/puacza/eksploracja/md9.dat")
m10<-read.table("C:/Users/bombi.LIWE/Documents/puacza/eksploracja/md10.dat")
m11<-read.table("C:/Users/bombi.LIWE/Documents/puacza/eksploracja/md11.dat")
pokaz(m11)
histbox(m4)

#zad 6
pokaz(s)
histbox(s)
head(s)
#limuzyna ma mniejsza predkosc, zuzycie paliwa i moc

#zad 7
head(i)
pokaz(i)
dev.new()
histbox(i)
#trudno rozroznic po lodydze, setosa jest najbardziej
#'typowa', tj. ma male odchylenie standardowe, 2 pozostale
#gatunki sie przenikaja, virginica ma naszersze 
#i najdluzsze platki

#przykl 11
mean(s[,1])
head(s)
mean(s[s$typ=='limuzyna',1])
mean(s[s$typ=='sportowy',1])

#pyt 2
mean(s[s$typ=='limuzyna',2])
mean(s[s$typ=='sportowy',2])
mean(s[s$typ=='limuzyna',3])
mean(s[s$typ=='sportowy',3])
#limuzyna - nizsze parametry

#zad 8
pokaz(s)
pokaz(m9)

#przykl 12
a = c(11,9,5,10,3)
median(a)
b = c(11,5,10,9,3)
median(b)
c = c(100,5,9,11,1)
median(c)

#pyt 3
#koeljnosc el, wartosci - one maja wplyw na srednia

#przykl 13
a=c(1,2,7,4,2,5,11,2,7)
modal(a)

#przykl 14
summary(s)

#zad 10
summary(i)

#przykl 15
x=c(1,5,9,7,15,16)
sd(x)
var(x)
y=c(1,5,9,7,7,7)
sd(y)
var(y)
z=c(1,2,4,4,2,100)
sd(z)
var(z)

#przykl 18
m = floor(5*runif(30)) # wektor wartosci losowych
barplot(m) # i jego wizualizacja
m1 = sort(m) # sortowanie
barplot(m1) # wizulalizacja wektora posortowanego
summary(m)
IQR(m) # rozstep miedzykwartylowy

