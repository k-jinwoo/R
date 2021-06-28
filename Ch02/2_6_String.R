# 날짜 : 2021/06/28
# 이름 : 김진우
# 내용 : Ch02. 데이터 유형과 구조 - 문자열(String) 처리 교재 p84

# R 패키지 설치
install.packages('stringr')

# R 패키지 로드
library(stringr)

# 문자열
str <- 'Hello R'
str

# 문자열 길이
str_length(str)

# 문자열 자르기
str_sub(str, 1,2)
