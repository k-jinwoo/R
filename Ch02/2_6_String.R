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

##################
#교재예제 실습하기
##################

#교재 p84 실습 - 문자열 추출
str_extract("홍길동35이순신45유관순25", "[1-9]{2}")
str_extract_all("홍길동35이순신45유관순25", "[1-9]{2}")

#교재 p85 실습 - 반복 수를 지정하여 영문자 추출하기
string <- "hongkd105leess1002you25강감찬2005"
str_extract_all(string, "[a-z]{3}")  # 영어 소문자가 3자 연속하는 경우 추출
str_extract_all(string, "[a-z]{3,}") # 영어 소문자가 3자 이상 연속하는 경우 추출
str_extract_all(string, "[a-z]{3,5}") # 영어 소문자가 3~5자 연속하는 경우 추출

#교재 p85 실습 - 문자열에서 한글, 영문자, 숫자 추출하기
str_extract_all(string, "hong")
str_extract_all(string, "25")
str_extract_all(string, "[가-힣]{3}") # 연속된 3개의 한글 문자열 추출
str_extract_all(string, "[a-z]{3}")   # 연속된 3개의 영어 소문자 추출
str_extract_all(string, "[0-9]{4}")   # 연속된 4개의 숫자 추출

#교재 p86 실습 - 문자열에서 한글, 영문자, 숫자를 제외한 나머지 추출하기
str_extract_all(string, "[^a-z]") # 영문자를 제외한 나머지 추출
str_extract_all(string, "[^a-z]{4}") # 영문자를 제외한 연속된 4글자 추출
str_extract_all(string, "[^가-힣]{5}") # 한글을 제외한 나머지 연속된 5글자 추출
str_extract_all(string, "[^0-9]{3}") # 숫자를 제외한 나머지 연속된 3글자 추출

#교재 p86 실습 - 주민등록번호 검사하기
jumin <- "123456-1234567"
str_extract(jumin, "[0-9]{6}-[1234][0-9]{6}")
str_extract_all(jumin, "\\d{6}-[1234]\\d{6}")

#교재 p87 실습 - 지정된 길이의 단어 추출하기
name <- '홍길동1234,이순신5678,강감찬1012'
str_extract_all(name, "\\w{7,}")

#교재 p87 실습 - 문자열의 길이 구하기
string <- 'hongkd105leess1002you25강감찬2005'
len <- str_length(string)
len

#교재 p87 실습 - 문자열 내에서 특정 문자열의 위치 구하기
string <- 'hongkd105leess1002you25강감찬2005'
str_locate(string, "강감찬")

#교재 p88 실습 - 부분 문자열 만들기
string_sub <- str_sub(string, 1, len -7)
string_sub
string_sub <- str_sub(string, 1, 23)
string_sub

#교재 p88 실습 - 문자열 교체하기
string_sub
string_rep <- str_replace(string_sub, 'hongkd105', '홍길동35,')
string_rep <- str_replace(string_rep, 'leess1002', '이순신45,')
string_rep <- str_replace(string_rep, 'you25', '유관순25,')
string_rep

#교재 p89 실습 - 문자열 결합하기
string_rep
string_c <- str_c(string_rep, "강감찬55")
string_c

#교재 p89 실습 - 문자열 분리하기
string_c
string_sp <- str_split(string_c, ",")
string_sp

#교재 p89 실습 - 문자열 합치기
string_vec <- c('홍길동35','이순신45','유관순25','강감찬55')
string_vec
string_join <- paste(string_vec, collapse = ",")
string_join
