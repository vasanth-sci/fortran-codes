real a(20,40),s,m 
integer i,j,k,n,e,f
open(3,file='output')
f = 0
10 format(10f7.2)
7 format (1/,a)
4 f =f+1
write(*,*) ' enter The dimension of matrix'
read*, n
write(3,'(1/,i2,a,i2)') f,') The dimension of matrix is' , n
write(*,*) ' Enter the elements of matrix'
read*, ((a(i,j),j=1,n),i=1,n)
write(3,7) ' The elements of matrix are'
do i =1,n
write(3,*) (a(i,j),j=1,n)
enddo 
do i= 1,n 
 do j= 1,n
   if(j==i) then 
   a(i,j+n) = 1
   else 
   a(i,j+n) = 0 
   endif 
 enddo
enddo
write(*,*) ' The argumented matrix is' 
write(3,7) ' The argumented matrix is' 
do i= 1,n 
write(*,10) (a(i,j),j=1,2*n)
write(3,10) (a(i,j),j=1,2*n) 
enddo 

do i =1,n
 do j= 1,2*n
  if(i.ne.j) then 
  s=a(j,i)/a(i,i) 
  do k= 1,2*n 
  a(j,k) = a(j,k)-s*a(i,k) 
  enddo 
  endif 
 enddo 
enddo

write(*,*)' Diagonalised matrix is'
write(3,7)' Diagonalised matrix is'
do i = 1,n 
write(*,10) (a(i,j),j=1,2*n)
write(3,10) (a(i,j),j=1,2*n)
enddo 

do i =1,n 
m = a(i,i)
 do j= 1,2*n
 a(i,j) = a(i,j)/m
 enddo 
enddo

write(*,*) 'The resultant matrix is'
write(3,7) 'The resultant matrix is'
do i= 1,n
write(*,10) (a(i,j),j= 1,2*n)
write(3,10) (a(i,j),j= 1,2*n)
enddo 
9 format(10f11.6)
write(*,*) 'The inverse matrix is '
write(3,7) 'The inverse matrix is '
do i= 1,n 
write(*,9) (a(i,j),j=n+1,2*n)
write(3,9) (a(i,j),j=n+1,2*n)
enddo
write(*,*)' enter value 1 to continue'
read*,e 
if (e==1) goto 4

end