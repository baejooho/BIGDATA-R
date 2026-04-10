setwd("C:/r_data")
Sys.setlocale('LC_ALL', 'Korean')

library(lubridate)



# 자주사용되는 기본 함수
# aggregate() : 다양한 함수를 사용하여 셜과 출력
# apply() : 다양한 기능
# cor() : 상관함수
# cumsum() : 설정된 지점까지의 누적합
# cumprom() : 설정된 지점가지의 누적곱
# diff() : 차이나는 부분을 찾는다
# length() : 요소갯수
# max() : 최대값
# min() : 최소값
# mean() : 평균
# median() : 중앙값
# order() : 요쇼의 원위치
# prod() : 누적곱
# range() : 범위
# rank() : 순위
# sd() : 표준편차
# rev() : 역순
# sort() : 정렬
# summary() : 요약
# sweep() : 일괄적 빼기
# tapply() : 벡터에서 주어진 함수 연산
# var() : 분산

v1 = c(1,2,3,4,5)
v2 = c('a','b','c','d','e')

max(v1)
max(v2)
mean(v1)
mean(v2)
sd(v1)
sum(v1)
var(v1)

install.packages("googleVis")
library(googleVis)
Fruits

# aggregate(계산될컬럼~기준될컬럼, 데이터, 함수) : 데이터프레임 상대로 주어진 함수값 구하기

# 년도별로 판매된 수량의 총합
aggregate(Sales~Year, Fruits, sum)

# 과일별로 가장 많이 판매된 수량
aggregate(Sales~Fruit, Fruits, max)

# 과일별로 최대 판매량에 연도를 추가해서 과일별, 년도별 최대 판매량 출력
aggregate(Sales~Fruit+Year, Fruits, max)

# apply(데이터, 행(1)/열(2), 함수) : matrix에 유용하게 사용(행, 열을 대당으로 작업)\
m1 = matrix(c(1,2,3,
              4,5,6), 2, by=T)
m1

apply(m1, 1, sum)
apply(m1, 2, sum)
apply(m1[,c(2,3)], 2, max)

# lapply(데이터, 함수) / sapply(데이터, 함수) : list처리
l1 = list(Fruits$Sales)
l2 = list(Fruits$Profit)
l1
l2

lapply(c(l1, l2), max) # 출력결과 : list형

sapply(c(l1, l2), max) # 출력결과 : 벡터형

# 데이터프레임에서 사용
lapply(Fruits[,c(4,5)], max)
sapply(Fruits[,c(4,5)], max)

# tapply(출력값, 기준컬럼, 함수) : 데이터셋의 factor 처리
# mapply(함수, 벡터1, 벡터2, ... 벡터n) : 벡터나 리스트를 데이터프레임처럼 처리
# - 데이터프레임이 아닌 벡터나 리스트형태로 데이터가 있을 때 마치 데이터프레임처럼 연산을 해주는 함수.
# 단, 백터들의 요소갯수가 동일해야 한다다

Fruits
tapply(Sales, Fruit, sum)
tapply(Fruits$Sales, Fruits$Fruit, sum)

# 컬럼명을 변수로 직접 사용하기 : attach
# attach() : 컬럼명을 변수처럼 직접 사용. 공통적으로 계속 사용되는 대상 데이터프레임을 지정할 때, 
# $ : dataframe$컬럼명은 입력할 데이터가 몇개 안될 때 주로 사용

attach(Fruits)
tapply(Sales, Fruit, sum)

# 판매된 과일별 합계
tapply(Sales, Fruit, sum)
aggregate(Sales~Fruit, Fruits, sum)

# 년도별 판매된 합계
tapply(Sales, Year, sum)
aggregate(Sales~Year, Fruits, sum)

v1 = c(1,2,3,4,5)
v2 = c(10,20,30,40,50)
v3 = c(100,200,300,400,500)

mapply(sum, v1,v2,v3)
mapply(max, v1,v2,v3)
