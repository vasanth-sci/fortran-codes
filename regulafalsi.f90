 real a,b,r,error,e,c
     i=0
	open(3,file='output')
    write(*,*)'enter the relative error percent'
    read *,e
	write(3,*) 'f(x)=x**2-1'
    write(3,*)'The relative error percent is ',e
4	write(*,*) ' enter the guessed value of upper and lower limits'
	read*, a,b
	write(3,*) ' The guessed value of upper and lower limits are '
	write(3,*) a , b
	if(f(a)*f(b)>0) then
    write(*,*) 'Wrong choice of limits, no sign change'
	write(3,*) 'Wrong choice of limits, no sign change'
    goto 4
    else 
 6  i = i + 1
    r = c 
    c= (b*f(a) - a*f(b))/(f(a)-f(b))
	error = (abs((c -r)/c))*100
	if (f(c)==0) goto 20
    if (f(a)*f(c)>0) then  
    a = c
    else
    b = c
    endif 
20  write(*,*) 'iteration no',i,'approx root',c
    write(3,*) 'iteration no',i,'approx root',c

    if (error>e)goto 6 
    endif  
    write(*,*) ' the root is', c
	write(3,*) ' the root is', c
    end  
    
	real function f(x) 
    real x
    f = x**2-5*x+1
    end



    