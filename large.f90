! find the largest number
real a,b,c,d 
open(3,file='output')
write(*,*) 'enter any three numbers'
4 read*,a,b,c 
write(3,*)	'the given numbers are'
write(3,*) a,b,c 
if (a>b .and. a>c) d=a
if (b>a .and. a>c) d=b
if (c>a .and. c>b) d=c
write(*,*) *,'the largest number is =',d
write(3,*)'the largest number is =',d 
print *, 'enter value 1 to continue'
read*, f
if (f==1)
 goto 1
 endif
end 