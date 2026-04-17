setwd("C:/r_data")
Sys.setlocale('LC_ALL', 'Korean')

# 조건문, 반복문
# 비교연산자 : ==, !=, >=, <=, >, <
#
# 조건문
# if(조건식) : 조건식 1개, 조건이 참인 경우에만 실행문
#
# if(조건식){
# 조선식이 참인 경우 실행문
# } else {
# 조건식이 거짓인 경우 실행문
# }
#


my1 = function(x){
  if(x<0){
    return(-x)
  }else{
    return(x)
  }
}

my1(-1)


# if(조건식1){
#   조건식1이 참인경우 실행문
# } else if(조건식2){
#   조건식2가 참인 경우 실행문
# } ..... {
#   조건식n이 참인 경우 실행문
# } else {
#   모든 조건식이 거짓인 경우 실행문
# }
#
# 입력된 숫자가 0보다 크면 2배의 값을 출력하고 0일 경우 0을 출력하고
# 0보다 작을 경우 1/2 배의 값을 출력하는 문장을 만드세요

my2 = function(x) {
  if (x > 0) {
    x = x*2
  } else if (x == 0) {
    x = 0
  } else {
    x = x*1/2
  }
  return(x)
}

my2(3)
my2(0)
my2(-3)

# ifelse(a, b, c) : a가 참이면 b를 실행, 거짓이면 c를 실행
# 홀, 짝 구분

no = scan()
ifelse(no %% 2 == 0, '짝', '홀')

if (no %% 2 == 0) {
  print('짝')
} else {
  print('홀')
}

# 서로 다른 두개의 숫자를 입력받아서 두 숫자 사이에 존재하는 숫자의 갯수를 구하여라.
n1 = scan()
n2 = scan()
ifelse(n1 > n2, n1-n2-1, n2-n1-1)

no = scan()
ifelse(no[1] > no [2], no[1]-no[2]-1, no[2]-no[1]-1)

# 반복문
# while : 조건이 있는 경우

no = 0
while(no < 5){
  print(no)
  no = no+1
}

# break : 해당 반복문을 빠져나와라(종료)

x = 1
while (x < 5) {
  x = x+1
  if (x == 4) {
    break
  }
  print(x)
}

# next : 해당 반복문을 빠져나와서 다시 조건식으로 분기

x = 1
while (x < 5) {
  x = x+1
  if (x == 4) {
    next
  }
  print(x)
}

# for : 반복의 횟수가 지정되어 있는 경우
# 정수 n을 입력받아서 1부터 n까지의 합계

my3 = function(n){
  i = 0
  for (j in 1:n) {
    i = i+j
  }
  print(i)
}

my3(10)

# 반복문의 실제 사용
# 특정 변수에 들어있는 값이 10 이상이면 colors 값에
# 'red'를 넣고 6~9까지면 'yellow'를 넣고 그 이하면 'green'을 넣는 예제
colors = c()
for (i in length(x)) {
  if (x[i] >= 10) {
    colors = c(colors, 'red')
  } else if (x[i] >= 6) {
    colors = c(colors, 'yellow')
  } else {
    colors = c(colors, 'green')
  }
}

# 여러 조건 동시에 지정
# ! : not
# &&(&) : and
# ||(|) : or

# 두 개의 숫자를 입력 받은 후 두 값이 모두 양수일 경우 두 수의 곱을 출력하고
# 두 값중 하나라도 0이나 음수일 경우에는 두 수의 합을 출력하세요.

my4=function(a,b) {
  if ((a >= 1) && (b >= 1)) {
    c = a*b
  } else {
    c = a+b
  }
  return(c)
}

my4(2,3)
my4(0,2)
my4(-1,3)
