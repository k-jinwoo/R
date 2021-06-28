# 날짜 : 2021/06/28
# 이름 : 김진우
# 내용 : Ch02. 데이터 유형과 구조 - Matrix 자료구조 교재 p63

# Matrix(행렬) 생성
m1 <- matrix(c(1:12))
m1

m2 <- matrix(1:12, nrow = 3, ncol = 4)
m2

m3 <- matrix(1:12, nrow = 3)
m3
m3[1,1]
m3[1,3]
m3[3,3]

m4 <- matrix(1:12, 3, byrow = T) # 행우선
m4

m5 <- matrix(1:12, 4, byrow = F) # 열우선
m5

# 벡터결합을 이용한 행렬생성
x <- c(1,2)
y <- c(3,4)

M1 <- rbind(x,y)
M2 <- cbind(x,y)
M1
M2
M1[1,]
M1[,2]

M3 <- rbind(1:3, 4:6)
M4 <- cbind(1:3, 4:6)
M3
M4

# 행렬연산
M1 + M2
M1 - M2
M1 * M2
M1 %*% M2
