# 날짜 : 2021/06/29
# 이름 : 김진우
# 내용 : Ch03 데이터 입출력 - 데이터 저장하기 교재 p101

Titanic
class(Titanic)

write.csv(Titanic,
          './file/titanic.csv',
          row.names = F,
          quote = F)
