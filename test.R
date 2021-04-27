x<- 0
if (x<0){
  print('NEGATIVE NUMBER')
}else if (x>0){
  print('POSITIVE NUMBER')
}else
{
  print('ZERO NUMBER')
}
print('end of program')

x<--9
ifelse(x>=0,'positive number','negative number')
x<--10
ifelse(x%%4==0,'even number','odd number')

#now we are going to use for loops
for( i in 1:5){
  print(i)
}
#if we have single loop in the statement we can avoid to use curly brackets,we can also write printf function in same line.
for( i in 1:5) print(i)

x<- 1:8
for( i in x){
  print(i)
}

x<- LETTERS
for( i in x){
  print(i)
}

#different function
x<- LETTERS
y<- x[1:7]
for( i in y){
  print(i)
}
# now we are going to use iterative control statements 
# while loop
i <-1
while(i<=5){
  print(i)
  i=i+1
}
#repeat loops
# in repeat loops are same as while loops , the only difffernce is it should have a break statement.
#break should be explicity used in repeat loops only .
i<-1
repeat{
  print(i)
  if(i>5)
    break
  i=i+1
}

i<-1
repeat{
  if(i>5)
    break
  print(i)
  i=i+1
}
# the while loops works until the condition is true and terminates when the condition is false.IN the same way , for loops terminates every conditon for once.
#BREAK AND NEXT STATEMENTS  helps in partial execution of the loop.once the break statement is encounetered in the loop , loop exited. ON THE OTHER AHND WHEN THE NEXT STATEMENT IS ENCOUNTERED , THE STATEMENT FOLLOWING THE NEXT STATEMENT IN THE BODY OF THE ARE SKIPPED AND THE CONDIITION IS REEVALUATED, DEPENDING UPON THE SITUATION THE LOOP EXECUTE SOR SEQUENCE CONTINUES.
for (i in 1:10){
  if(i%%2==0)
    next
  print(i)
}
##FUNCTIONS
# a piece of code  you can use, a funtion runs or executes only when it is called.
# let us see how to build our own funtions, (USER DEFINED FUNTIONS)
mysum= function(x=1,y=2,z=9){
  z=x+y+z
  return(z)
}
## funtions returning multiple values
myeval= function(x,y){
  z=x+y
  w=x*y
  u= x-y
  result= list('sum'=z,'mul'=w ,'sub'=u)
  return(result)
}#INLINE FUNCTIONS OR LAMBDA FUNCTIONS
myeval=function(x,y) x+y
myexp= function(x)x^3
# VECTORS - are contiguos cells containning data, THERE ARE SIX TYPES OF VECTORS- INTEGER, DOUBLE , CHARACTER, LOGICAL,COMPLEX , RAW.
#integer , double and complex are used to represent numbers,
#whereas logical is used to represent true and false values,
#chracters represnts alphabets and symbols and raw atomic type is used to represent raw data.
# a variable  is still a vector of length one.
# the most common way to create vectors is to use function c which stands for concatinate or combine and this function can take multiple arguments.
assign('y',c(30,40,50))
y
x<- c('T','F')
x
x<- c('T','10.5','x')
x

x<- c(10,20,30)
y<- c(10.5,20.5)
z <-c(x,y)
z


z<-x<-y<- c(1,2,3)
z
x
y

x<-vector()
x
x<- vector('character',length=8)
x
x<- c(1,2,3,4,5,6,7,89)
length(x)

#INDEXING VECTORS
x<- c(1,22,32,32,43,4,5,5,6,7)
x[1]
x[5]
x[-3]
x[3:7]
x[c(3,4,5)]

x<-c(1,2,3,4,5,6,7,8)
x[2]<-9
x
x<-c(1,2,3,4,5,6,7,8)
x[-2]<-9
x
#here y is retriving the value of x
x<-c(1,2,3,4,5,6,7)
y<-c(T,F,T,F,T,F,T)
x[y]

x<-c(12,12,13,1,4,15,1,6)
for (i in 1:length(x))
  print(x[i])


x<-c(12,12,13,1,4,15,1,6)
for (i in seq_along(x))
  print(x[i])

# MATCHING OPERATOR - in operator checks whether the element is present in the function.
x<-c(1,2,3,4,5,6,7,8,9,99)
 99%in% x

x<- c(1,22,33,44,55,66,77,8,99)
y<-c(20,33,44)
y %in% x
#VECTORS ARITHMATICS
x<- c(10,20,30,40,506,70)
x
x+2

x<- c(10,20,30,40,506,70)
x
sqrt(x)

x<- c(10,20,30,40,506,70)
y<- c(10,20,30,40,506,70)
x+y
#VECTORS METHODS
x<- c(10,20,30,40,506,70)
length(x)
x<- c(10,20,30,40,506,70)
prod(x)
x<- c(10,20,30,40,506,70)
sum(x)
x<- c(10,20,30,40,506,70)
rev(x)
x<- c(10,20,30,40,506,70)
sort(x)

x<- c(10,20,30,40,506,70)
y<- c(10,20,30,40,506,70)
x%*%y
crossprod(x,y)

x<- c(10,20,30,40,506,70)
y<- c(10,20,30,40,506,70)
x %o%y


x<- c(10,20,30,40,506,70)
y<- c(10,20,30,40,506,70)
x %o%y
tcrossprod(x,y)
# COERSION -IMPLICIT AND EXPLICIT 
x<- c('10','john','10.50')
x
#you can see this the logical values are easily convertedd into strings
x<- c('10','true')
x
#here you cam see that the logical values are easily ocnverted into numberes



#suppose we cannot convert the function implicitly than we can convert it implicitly bybusing as function.
x<-0:5
x
class(x)
as.logical(x)
as.character(x)

x<-c('john','bob','anushka')
x
as.logical(x)

#LOGICAL VECTORS- they are relational operators but as they produce results logicalmlike true or false therfore they are known as logical operators in R.
# <,<=,>,>=,!=,==
x<- c(20,20,47,56,67,8)
x
y<- x>30
y

x<- c(20,20,47,56,67,8)
y<- c(26,20,47,56,67,8)
x<y
which(x>30)
x[which(x>30)]

#FACTORS
#factors are used to represent catogerical data , treated as integers having a label and factors are self describing.
x<- factor(c('Male','Female','Male','Female','Female'))
x
table(x)
#MATHEMATICAL FUNCTIONS IN R
#absolute value
x<-c(1.2,-2.3,3.4,8.9,9.0)
x
abs(x)
#CEILING FUNCTION-it returns the next integer 
x<-c(1.2,-2.3,3.4,8.9,9.0)
x
ceiling(x)
# FLOOR FUNTION-it returns the smllest funtion corresponding to the elemnt
x<-c(1.23,-2.33,3.49,8.94,9.56)
x
floor(x)
#ROUND FUNTION-used to round of decimal places
x<-c(1.23,-2.33,3.49,8.94,9.56)
x
round(x)

x<-c(1.23,-2.33,3.49,8.94,9.56)
x
round(x,2)
#TRUNCATE FUNCTION- which is usde to trunacte the floating point numbers to whole numbers.
x<-c(1.23,-2.33,3.49,8.94,9.56)
x
trunc(x)

x<-c(1.23,-2.33,3.49,8.94,9.56)
x
trunc(x)
round(x)

x<-c(1,2,3,4,5,6,7,8)
x
sqrt(x)

x<-c(1,2,3,4,5,6,7,8)
x
exp(x)
log(x)
log(10)
factorial(x)
 #SIMULATION IN R
x<- rnorm(10,mean=0,sd=1)
x
# MATRICES IN R PROGRAMMING LANGUAGE
m=matrix(nrow=3,ncol=4)
m
dim(m)
m=matrix(c(1,2,3,4,5,6,7,8,9),nrow=3,ncol=3,byrow=TRUE)
m

m <-c(1,2,3,4,5,6,7,8,90)
m
dim(m)<-c(3,3)
m

m<- matrix(1:9,nrow=3,ncol=3,byrow=TRUE)
m

m<-matrix(c(1,2,3,4,5,6,7,8,9,8,89,66),nrow=4,ncol=3,byrow=TRUE)
m
dim(m)
length(m)
nrow(m)
ncol(m)
#DIAGONAL
m<- matrix(9,3,3)
m
diag(1,3,3)
m

m<- matrix(9,3,3)
m
diag(1:3)
m

#MATRIX NAMING -ROWS AND COLUMNS -in this see how to explcitly give names to rows and columns 
m<- matrix(c(1,-4,-4,0,9,8,85,4),ncol=2,nrow=4,byrow=TRUE)
m
rownames(m)<- c(1,2,3,4)
colnames(m)<- c('a','b')
m


A<- matrix(c(1,-4,-4,0,9,8,85,4),ncol=2,nrow=4,byrow=TRUE)
A
A[1,2]
A[,2]
A[2,]
#nrow()will give us the last row elements.
A[nrow(A),]
A
A[,ncol(A)]
A
# '-'eliminates the element or row or column from the matrix.
A[,-2]
A
#indexes are also used to replace the values of elements.
A[1,2]=5
A[1:3,2:3]
A

A[1:3,-2]
A
#IF WE WANT TO SUBSET MORE THAN ONE ROW OR COLUMN WE CAN USE VECTORS 
A[,c(1,2)]
A

A=A[-1,-2]
A
#rbind andcbind functions
A<- matrix(c(1,2,3,4,5,6,7,8,9),nrow=3,ncol=3,byrow=TRUE)
A
B<- rbind(A,c(1,2,3))
B
A<- matrix(c(1,-2,3,-4,5,-6,7,-5,0),nrow=3,ncol=3,byrow=TRUE)
A
B<- cbind(A,c(1,2,3))
B

A<- matrix(c(1,2,3,4,5,6,7,8,9),nrow=3,ncol=3,byrow=TRUE)
A
B<- matrix(c(1,-2,3,-4,5,-6,7,-5,0),nrow=3,ncol=3,byrow=TRUE)
B
C<-cbind(A,B)
C


A<- matrix(c(1,2,3,4,5,6,7,8,9),nrow=3,ncol=3,byrow=TRUE)
B<- matrix(c(1,-2,3,-4,5,-6,7,-5,0),nrow=3,ncol=3,byrow=TRUE)
A-B
A+B
A/B
A%*%B
t(A)
#solve is use to the find the inverse of matrix
solve(A)
#MATRIX SPECIFIC FUNCTIONS
A <-matrix(1:9,3,3)
A
rowSums(A)
colSums(A)
rowMeans(A)
colMeans(A)

A <-matrix(1:9,3,3)
A
apply(A,1,sum)
apply(A,2,sum)
#LISTS- THEY CAN ALSO VECTORS AS ELEMENTS,AND COLLECT ELEMENTS OF ANY TYPE OF R OBJECT.ELEMENTS OF LIST NEED NOT TO BE OF SAME TYPE.

