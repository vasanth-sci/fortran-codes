real a(10,10),x(10)
integer n,m
m = 0
open(3,file='output')
4 m=m+1
write(*,*) 'enter number of equations'
read(*,*) n
5 format(1/,i2,a,1x,i1,1/) 
write(3,5) m,') The given number of equations is',n
write(*,*) 'enter the elements of argumented matrix'
read*, ((a(i,j),j=1,n+1),i=1,n)
write(3,*) 'The elements of argumented matrix is'
do i=1,n
write(3,'(10f11.6)') (a(i,j),j=1,n+1)
write(*,*) (a(1,j),j=1,n+1)
enddo 
do i= 1,n-1 
  do k = i+1,n
	  s = a(k,i)/a(i,i)
 	   do j= i,n+1 
	      a(k,j) = a(k,j) - s*a(i,j) 
	   enddo  
  enddo
enddo 
write(*,*) ' The upper triangle matrix is '
write(3,'(1/,a)') ' The upper triangle matrix is '
do i=1,n 
write(*,'(10f11.6)')(a(i,j),j=1,n+1)
write(3,'(10f11.6)')(a(i,j),j=1,n+1)
enddo
x(n) =a(n,n+1)/a(n,n) 
do i=n-1 ,1,-1 
   c= 0
   do j= i+1,n 
   c= c+(a(i,j)*x(j))
   enddo 
   x(i)=(a(i,n+1)-c)/a(i,i)
enddo  
write(*,*) 'The solutions are'
write(3,'(1/,a)') 'The solutions are'
do i = 1,n 
write(*,*) 'x(',i,') =',x(i)
write(3,'(a,i1,a,f11.6)') 'x(',i,') =',x(i)
enddo
write(*,*) ' enter value 1 to continue'
read*, k
if (k==1) goto 4 
end
