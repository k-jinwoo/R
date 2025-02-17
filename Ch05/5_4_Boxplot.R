# 날짜 : 2021/06/29
# 이름 : 김진우
# 내용 : Ch05 데이터 시각화 - 박스상자 교재 p148

# 박스상자 기본
cars

View(cars)

dist <- cars[,2]
dist
class(dist)

boxplot(dist, main = '자동차 제동거리')
boxplot.stats(dist)

# 붓꽃 데이터 분석
iris
boxplot(data=iris,
        Sepal.Length ~ Species)

#교재 p148 실습 - VADeaths 데이터셋을 상자그래프로 시각화하기
  # range = 0 속성은 최소값과 최대값을 점선으로 연결
boxplot(VADeaths, range = 0)

  # notch = T 속성은 중위수 비교 시 사용(허리선)
boxplot(VADeaths, range = 0, notch = T)
abline(h = 37, lty = 3, col = 'red')

#교재 p149 실습 - VADeaths 데이터셋의 요약통계 보기
summary(VADeaths)
