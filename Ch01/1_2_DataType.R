# 날짜 : 2021/06/28
# 이름 : 김진우
# 내용 : Ch01. R설치와 개요 - 자료형 교재 p41

# 숫자형
num1 <- 1
num2 <- 2
num3 <- 3.14
num1
num2;num3

# 논리형
bool1 <- TRUE
bool2 <- FALSE
bool1;bool2

# 문자형
str1 <- "Hello"
str2 <- "welcome"
str1
str2

# 특수형
data1 <- NULL # 초기값을 의미
data2 <- NA   # 결측값, Not Available
data3 <- NaN  # 숫자가 아닌 값, Not a Number

data1
data2
data3

#교재 p42 실습 - 스칼라 변수 사용 예
int <- 20
int
string <- '홍길동'
string
boolean <- TRUE
boolean
sum(10,20,20)
sum(10,20,20,NA)
sum(10,20,20,NA,na.rm=TRUE)
ls()

#교재 p43 실습 - 자료형 확인
is.character(string)
x <- is.numeric(int)
x
is.logical(boolean)
is.logical(x)
is.na(x)

#교재 p43 실습 - 문자 원소를 숫자 원소로 형 변환하기
x <- c(1,2,"3")
x
result <- x * 3
result <- as.numeric(x) * 3
#result2 <- as.numeric(x)* 3
result

#교재 p44 실습 - 스칼라 변수의 자료형과 자료구조 확인
z <- 5.3 - 3i
Re(z)
Im(z)
is.complex(x)
as.complex(5.3)

 #mode(변수):자료의 성격(type)을 알려준다.
mode(int)
ode(string)
mode(boolean)

 #class(변수):자료구조의 성격(type)을 알려준다.
class(int)
class(string)
class(boolean)

#교재 p45 실습 - 문자벡터와 그래프 생성
 #5개의 문자열 원소를 갖는 벡터 객체 생성
gender <- c("man","woman","woman","man","man")
plot(gender)

#교재 p45 실습 - as.factor() 함수를 이용하여 요인형 변환
Ngender <- as.factor(gender)
table(Ngender)

#교재 p46 실습 - Factor형 변수로 차트 그리기
plot(Ngender)
 #자료형과 자료구조 보기
mode(Ngender)
class(Ngender)
is.factor(Ngender)
