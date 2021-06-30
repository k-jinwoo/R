# 날짜 : 2021/06/30
# 이름 : 김진우
# 내용 : Ch07.EDA와 Data 정제 - 결측치 실습하기 교재 p200

library('dplyr')

setwd('C:\Users\bigdate\Desktop\workspace')

# 결측치를 갖는 dataframe 불러오기
df_exam <- read.csv('./file/exam_na.csv')

# 결측치 존재여부 확인
is.na(df_exam)

# 결측치를 갖는 행을 제거
df_new <- df_exam %>% filter(!is.na(math) & !is.na(english) & !is.na(science))

# 기본통계분석
df_new %>% mutate(total=math+english+science, mean=total / 3) %>% arrange(desc(total))

#교재 p201 실습 - summary() 함수를 사용하여 결측치 확인하기
setwd('C:/Users/bigdate/Desktop/workspace/R/file')
dataset <- read.csv('sample.csv', header = T)
summary(dataset$AGE)

#교재 p201 실습 - sum() 함수의 속성을 이용하여 결측치 제거하기
sum(dataset$AMT17, na.rm = T)

#교재 p201 실습 - 결측치 제거 함수를 이용하여 결측치 제거
AMT172 <- na.omit(dataset$AMT17)
sum(AMT172)
length(AMT172)

#교재 p202 실습 - 결측치를 0으로 대체하기
x <- dataset$AMT17
x[1:30]
dataset$AMT172 = ifelse(!is.na(x), x, 0)
dataset$AMT172[1:30]

#교재 p202 실습 - 결측치를 평균으로 대체하기
x <- dataset$AMT17
x[1:30]

dataset$AMT173 = ifelse(!is.na(x), x, round(mean(x, na.rm = TRUE),2))
dataset$AMT173[1:30]

dataset[c('AMT17','AMT172','AMT173')]
