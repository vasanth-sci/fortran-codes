	real a,error,e,c, f,g,x(10)
	integer i,j,k,l
	j=0
	open(3,file='output')
	write(3,*) 'f(x) = x**2-5*x+1 '
    write(*,*)'enter the relative error percent'
    read *,e
   write(3,'(a,f10.6)')'The relative error percent is ',e
4	write(*,*) ' enter the intial  guessed value '
	read*, a 
    
	if(g(a)==0) then
 3   write(*,*) 'Wrong choice of intial value'
    goto 4
    else 
5	 format(1/,i2,a,f11.6)
     j= j+1
	 i=0
	write(3,5) j,') The intial guessed value is ',a
 6  i = i + 1 
    c= a - f(a)/g(a)
	error = (abs((c -a)/c))*100 
7   format(a,i2,2x,a,f11.6)	 
20  write(*,*) 'iteration no',i,'approx root',c
    write(3,7) 'iteration no',i,'approx root',c
	a = c
	if (f(c)==0) goto 22
    if (error>=e)goto 6 
    endif
21  format(a,f11.6)	  
22  x(j)= c
    write(*,*) 'The root is', c
	write(3,21)'The root is', c
	write(*,*) 'enter value 1 to find other roots '
	read(*,*) k 
	if(k==1) goto 4
	write(*,*)'the roots are', (x(l),l=1,j)
	write(3,'(1/,a,5f11.6)')'the roots are', (x(l),l=1,j)
    end  
    
	real function f(x)
	real x 
	f = x**2-5*x+1
	end
   real function g(x)
	real x 
	g = 2*x-5
	end




