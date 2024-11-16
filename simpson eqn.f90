real a,b,c(100),f,d,h,int
integer i,n,e,m
open(3,file='output')
2 format(a,1/)
5 format(i2,a,f11.6,1x,a,1x,f11.6,1/)
6 format(a,1x,f11.6,1/)
8 format(a,1x,i3,1/)
m=0
write(3,2) 'f(x)= 1/(1+x)'
4 m= m+1 
write(*,*) 'enter the limits'
read*, a,b
write(3,5) m,') The limits are', a,'and',b
7 write(*,*) 'Enter no of intervals' 
read*,n 
g = mod(n,2)
if(g==1)then
write(*,*)'interval should be in even number'
goto 7 
endif
write(3,8) 'No of intervals is',n 
h=(b-a)/n
d=0
v=0 
do i =1,n-1
c(i) =d+a+h
d=c(i)
enddo 
do i=1,n-1,2
v=v+f(c(i))
enddo
do i=2,n-1,2
s=s+f(c(i))
enddo
int = h*(f(a)+f(b)+4*v+2*s)/3 
write(*,*) 'The value of integration is',int
write(3,6) 'The value of integration is',int
write(3,2) '_________________________________________'
write(*,*) 'Enter value 1 to continue'
read*,e
if (e==1)goto 4
end 
real function f(x) 
real x 
f = 1/(1+x)
end 
