! find the largest number
real a,b,c,d,f 
open(3,file='output')
4 write(*,*) 'enter any three numbers'
 read*,a,b,c 
write(3,*)'the given numbers are'
write(3,*) a,b,c 
if (a>=b .and. a>=c) d=a
if (b>=a .and. a>c)  d=b
if (c>=a .and. c>=b) d=c
write(*,*)'the largest number is =',d
write(3,*)'the largest number is =',d 
write(*,* )'enter value 1 to continue'
read*, f
if (f==1) then
goto 4
endif
end 