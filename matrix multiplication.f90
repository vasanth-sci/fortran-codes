real a(10,10) ,b(10,10),c(10,10)
integer m,n,p,q,o
open(3,file='output')
4 write(*,*) 'enter no of rows and no of columns on matrix a'
read(*,*) m,n  
write(*,*) 'enter no of rows and no of columns on matrix b'
read(*,*) p,q 
write(3,*) 'no of rows and no of columns on matrix a'
write(3,*) m,n
write(3,*) 'no of rows and no of columns on matrix b'
write(3,*) p,q
if( p .ne. n) then
write(*,*) 'non executable order of matrices'
write(3,*) 'non executable order of matrices'
goto 30
endif
write(*,*) 'Enter the elements of a'
read(*,*) ((a(i,j),j=1,n),i=1,m) 
write(3,*) 'The elements of a'
do i=1,m
write(3,*) (a(i,j),j=1,n)
enddo
write(*,*) 'Enter the elements of b'
read(*,*) ((b(i,j),j=1,q),i=1,p) 
write(3,*) 'The elements of b'
do i=1,p
write(3,*) (b(i,j),j=1,q)
enddo

do i = 1,m 
  do j = 1,q
  	 c(i,j) = 0
    do k = 1,p
  	c(i,j)=c(i,j)+(a(i,k)*b(k,j))
  	enddo	
  enddo
enddo

write(*,*) 'the product of given matrix is '
write(3,*) 'the product of given matrix is '
do i =1,m
write(*,*) (c(i,j),j=1,q )
write(3,*) (c(i,j),j=1,q )
enddo
30 write(*,*) ' enter value 1 to continue'
read(*,*) o 
if (o==1) goto 4 
end

	 