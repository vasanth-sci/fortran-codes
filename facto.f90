real x,b
integer f,j 
1 read*,x
print*,cos(x)
c=0
b=0
do j= 2,33,4
c= c + (x**j)/f(j)
enddo 
do j= 4,33,4 
b= b + (x**j)/f(j)
enddo
a= 1-c+b 


! b=1-(x**2/f(2))+(x**4/f(4))-(x**6/f(6)) +(x**8/f(8))
print*,'by exapansion',a
goto 1
end
integer function f(x)
integer i,x,d
d=1
do i=1,x-1
d=(1+i)*d
enddo
f=d
end 
