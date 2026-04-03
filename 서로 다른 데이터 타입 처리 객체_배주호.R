# 특정 키만 조회
l1$addr

# list에 요소 추가/ 삭제
l1$birth = '2026'
l1$birth

l1$name
l1$name = c('고길동', '마이콜')
l1$name
l1$name[length(l1$name)+1] = '둘리'
l1$name

# append() 사용
l1$name = append(l1$name, '홍길동', after=1)
l1$name

# list 삭제
# 1. 특정값을 삭제
l1$name[length(l1$name)-1]=NA
l1$name

# 2. 리스트 키 삭제
l1$birth = NULL

# 2. dataframe
# 2-1. 각 컬럼(라벨)별로 먼저 생성 후 data.frame으로 모든 컬럼을 합친다
no = c(1,2,3,4)
name = c('Apple', 'Banana', 'Peach', 'Grape')
price = c(500,200,100,300)
qty = c(5,2,4,7)

sales = data.frame(No=no, NAME=name, PRICE=price, QTY=qty)
sales
class(sales)
str(sales)

# 2-2. 행렬로 생성
sales2 = matrix(c(1, 'Apple', 500, 5,
                  2, 'Peach', 200, 2,
                  3, 'Banana', 100, 4,
                  4, 'Grape', 50, 7), 4, by=T)
sales2
d1 = data.frame(sales2)
d1

names(d1) = c('NO','NAME','PRICE','QTY')
d1

#데이터 조회
sales
sales$NAME
sales[1,3]
sales[,2]
sales[3,]
sales[c(1,3),]
sales[,c(2,4)]
sales[,c(1:3)]

# 원하는 조건만 검색 : subset()
sales
subset(sales, qty <= 5)
subset(sales, price == 200)
subset(sales, name == 'Apple')

# 데이터추가/ 합치기 : rbind(), cbind(), merge()
no = c(1,2,3)
name = c('apple','banana','peach')
price = c(100,200,300)

df1 = data.frame(NO=no, NAME=name, PRICE=price)
df1

no = c(10,20,30)
name = c('train', 'car', 'ship')
price = c(1000,2000,3000)
df2 = data.frame(NO=no, NAME=name, PRICE=price)
df2

df3 = cbind(df1, df2)
df3

df4 = rbind(df1, df2)
df4

df5 = data.frame(name=c('apple','banana','cherry'),price=c(300,200,100))
df6 = data.frame(name=c('apple','cherry','berry'), qty=c(10,20,30))
cbind(df5, df6)
rbind(df5, df6)

merge(df5,df6)
merge(df5,df6,all = T)

# no(번호)가 4, 5이고, 이름이 'mango', 'berry'와 가격이 각 400,500인 데이터 생성 후 df1행 추가
df1

n1 = data.frame(NO = c(4,5), NAME = c('mango','berry'), PRICE=c(400,500))
df1 = rbind(df1,n1)
df1

# qty(수량)이 (10,20,30,40,50)인 데이터를 열추가 하시오
df1 = cbind(d1, qty=c(10,20,30,40,50))
df1

class(df1)
str(df1)
