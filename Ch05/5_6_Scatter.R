# 날짜 : 2021/06/29
# 이름 : 김진우
# 내용 : Ch05 데이터 시각화 - 산점도 교재 p154

View(mtcars)
wt <- mtcars$wt
mpg <- mtcars$mpg

plot(wt, mpg)
plot(wt, mpg, col = 'red', pch = 19)

view(iris)
ds_iris <- iris[,3:4]
ds_iris
class(ds_iris)

group <- as.numeric(iris$Species)
group

color <- c('red','green','blue')

plot(ds_iris, pch = 16, col = color[group])

#교재 p154 실습 - 산점도 그래프에 대각선과 텍스트 추가하기
price <- runif(10, min = 1, max = 100)
plot(price, col = 'red')

par(new = T)
line_chart = 1:100
plot(line_chart, type = 'l', col = 'red', axes = F, ann =F)

text(70,80,'대각선추가', col = 'blue')

#교재 p155 실습 - type 속성으로 산점도 그리기
par(mfrow =c(2,2))
plot(price, type = 'l')
plot(price, type = 'o')
plot(price, type = 'h')
plot(price, type = 's')

#교재 p156 실습 - pch 속성으로 산점도 그리기
par(mfrow = c(2,2))
plot(price, type = 'o', pch = 5)
plot(price, type = 'o', pch = 15)
plot(price, type = 'o', pch = 20, col = 'blue')
plot(price, type = 'o', pch = 20, col = 'orange', cex = 1.5)

par(mfrow = c(1,1))
plot(price, type = 'o', pch = 20, col = 'green', cex = 2.0, lwd = 3)

#교재 p162 실습 - iris 데이터셋의 4개 변수를 상호 비교
attributes(iris)
pairs(iris[iris$Species == 'virginica', 1:4])
pairs(iris[iris$Species == 'setosa', 1:4])
