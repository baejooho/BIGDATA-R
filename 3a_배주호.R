install.packages("installr")
library(installr)
updateR()

print(100)
100

print('100')
"100"

print(100+100)
100+100

d1 = 100
class(d1)

d1 = '100'
class(d1)

print(1)

print(1, 2)
print('1', '2')

cat(1, ':','a','\n',2,":",'b')

# 1. 숫자형
a = 120
# 대입 연산자 (윗줄과 같은 의미)
a <- 130

a = 1:20
a
a[1]     # 1번 순서
a[12]    # 12번 순서
a[20]    # 20번 순서

a = 3+(4*5)
a

1+2; 2*3; 4/5    # 세미클론으로 구분하였으므로 3줄로 되어있는 실행문과 동일

# 산술연산자
# +, -, *, **, ^
2**3
2^3

# 나누기
# / : 나누기 결과를 실수값으로 표현
# %/% : 몫
# %% : 나머지

5/2
5%/%2
5%%2

10000
100000     # 0 다섯개 넘어가면 지수로 표현
1e2
3e3
3e-2

'1' + '2'

# 강제형변환 : as.~
as.numeric('1') + as.numeric('2')

# 2. a문자형
'first'

first = 'a'
class(first)

# 3. 진리값 : TRUE/ FALSE
# & : AND연산 (모두가 참인 경우에 참)
# | : OR연산 (하나라도 참이면 참)
# ! : NOT연산 (반전)
# R에서는 0을 체외한 모든 수가 참
3&0
3&-2
0.3&-2

3|0
0|0

!0

# 4. NA/ NULL
# NA : 잘못된 값이 들어 올 경우(Not Applicable, Not Available)
# NULL : 값이 없는 경우

cat(1, NA, 2)
cat(1, NULL, 2)

sum(1, NA, 2)
sum(1, NULL, 2)


# 5. factor형 : 여러번 중복되어 나오는 데이터들을 각 값으로 모아서 대표값을 출력
# csv : 데이터 또는 컬럽을 구분하는 구분자를 ,로 해놓은 파일
setwd("C:/r_data")    # 경로설정(무조건 하기)
getwd()    # 가져오기

Sys.setlocale('LC_ALL', 'Korean')    # 한국어 설정(무조건 하기)

t1 = read.csv("factor_test.txt")
t1

class(t1)
str(t1)

f1 = factor(t1$blood)
f1

summary(f1)

# 문제) 성별을 요약하시오.
t1

s1 = factor(t1$sex)
summary(s1)


# 6. 날짜와 시간
# 6-1. Base 패키지로 날짜 시간 제어
Sys.Date()
Sys.time()
date()

"2026-03-20"
class("2026-03-20")


# 문제) "2023-03-20"의 문자데이터를 날짜 데이터로 바꾸고 타입을 확인하시오.

class(as.Date("2026-03-20"))

as.Date("03-20-2026")

# 날짜형태 지정
# %d : 일
# %m : 월
# %Y : 년(4자리)
# %y : 년(2자리)

as.Date("03-20-2026", format="%m-%d-%Y")
as.Date("032026", "%m%d%y")


























