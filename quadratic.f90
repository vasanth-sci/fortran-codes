!find the roots of quadratic equation
real a,b,c,d,e,f,g,h,i
open(2,file='output')
3 write(*,*) ' enter coeeficents of equation'
read*, a,b,c
write(2,*) 'the quadratic equation is'
write(2,*) a,'x**2 +',b,'x+',c
write(*,*) 'the quadratic equation is'
write(*,*) a,'x**2 +',b,'x+',c
d = (b**2) - (4*a*c)
e = (-b)/(2*a)
if (d==0) then
write(*,*) 'the roots are real and equal'
write(2,*) 'the roots are real and equal'
write(*,*)	e
write(2,*)	e
endif
if (d>0) then
f = (sqrt(d))/(2*a)
write(*,*) 'the roots are real and distinct'
write(2,*) 'the roots are real and distinct'
write(*,*) (e+f),'and',(e-f)
write(2,*) (e+f),'and',(e-f)
endif
if (d<0) then
g = (sqrt(-d))/(2*a)
write(*,*) 'the roots are complex'
write(2,*) 'the roots are complex'
write(*,*) e,'+',g,'i and ',e,'-',g
write(2,*) e,'+',g,'i and ',e,'-',g
endif
write(*,*) 'to continue the program enter value 1'
read(*,*) i
if (i==1) then
goto 3
endif

close (2)
end
