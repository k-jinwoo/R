# 날짜 : 2021/07/01
# 이름 : 김진우
# 내용 : Ch09 정형과 비정형 데이터 처리 - mySQL 데이터 처리 실습 교재 p292

install.packages('RMySQL')
library(RMySQL)
library(dplyr)
library(ggplot2)

# 1단계 - 데이터베이스 접속
conn <- dbConnect(MySQL(), host='54.180.105.158', user='kim415272',
                  password='1234', dbname='kim415272')


# 2단계 - 쿼리 실행
df_user <- dbGetQuery(conn, statement = 'SELECT * FROM `USER1`;')
Encoding(df_user$name) <- 'UTF-8'
View(df_user)

# 매출 데이터 불러오기
df_sale <- dbGetQuery(conn, statement = 'SELECT * FROM `SALE`;')
View(df_sale)

# 직원별 매출 그룹화
df_result <- df_sale %>% group_by(uid) %>% summarise(total = sum(sales)) %>% arrange(desc(total))
View(df_result)

# 시각화
ggplot(data=df_result, aes(x=uid, y=total)) + geom_col()

# 데이터베이스 종료
dbDisconnect(conn)
