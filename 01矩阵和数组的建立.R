#创建矩阵#
？matrix
x<-c(2,34,67,45)#数据#
rnames<-c("r1","r2")#各横名字#
cnames<-c("c1","c2")#各列名字#
newmatrix<-matrix(x,nrow = 2,ncol = 2,byrow=TRUE,
                  dimnames = list(rnames,cnames))
#向量x为数据，nrow：矩阵几行，ncol：矩阵几列，#
#byrow=TRUE按横填充 dimnames：指定横和列的名字#
newmatrix

#创建数组#
?array
dim1<-c("A1","A2","A3")#维度1#
dim2<-c("b1","b2")#维度2#
dim3<-c("c1","c2","c3","c4")#维度3#
d<-array(1:24, c(3,2,4),dimnames=list(dim1,dim2,dim3))
#c(3,2,4)定义数据3个维度的长度#
d
