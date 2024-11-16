 real a,b,error,e,c
     i=0
	open(3,file='output')
    write(*,*)'enter the relative error percent'
    read *,e
    write(3,*)'The relative error percent is ',e
4	write(*,*) ' enter the guessed value of upper and lower limits'
	read*, a,b
	write(3,*) ' The guessed value of upper and lower limits are '
	write(3,*) a , b
	 
 6 	 i = i +1 
     c= (a+b)/2
    if (f(c)==0) goto 20
    if (f(a)*f(c)>0) then  
    a = c
    else
    b = c
    endif 
20  write(*,*) 'iteration no',i,'approx root',c
    write(3,*) 'iteration no',i,'approx root',c

    goto 6  
    write(*,*) ' the root is', c
	write(3,*) ' the root is', c
    end  
    
	real function f(x) 
    real x
    f = x**2-1
    end



    
