real x(100),y(100),int
integer n,i,e
open(3,file='output')
7 format(i2,a) 
5 format(a,1x,20f8.2)
6 format(1/,a,1x,f11.6)
8 format(15x,a)
m=0
2 m = m+1
4 write(*,*) 'enter no of data'
read*,n
f=mod(n,2)
if(f==0)then
write(*,*)'interval should be in even number'
goto 4 
endif 
write(*,*) 'enter x value'
read*, (x(i),i=1,n)	
write(*,*) 'enter y value'
read*, (y(i),i=1,n)
write(3,7) m,')'
write(3,5) 'x :',(x(i),i=1,n)
write(3,5) 'y :',(y(i),i=1,n)
int=0 
do i=3,n,2 
j=i-1 
k= i-2
int = int + (x(i)-x(k))*(y(i)+4*y(j)+y(k))/6 
enddo 
write(*,*)'The value of integration is',int
write(3,6)'The value of integration is',int
write(3,8) '_________________'
write(*,*)'Enter value 1 to continue'
read*,e 
if(e==1)goto 2
 
end
