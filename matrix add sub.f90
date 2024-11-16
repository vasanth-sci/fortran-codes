integer m ,n
real a(10,10),b(10,10)
open(3,file='output')
4 write(*,*) ' enter no of rows and number of columns of matrix'
read(*,*) m,n
write(*,*) ' enter the elements of matrix a'
read(*,*) ((a(i,j),j=1,n),i=1,m	)
write(3,*) ' the elements of matrix a'
do i=1,n
write(3,*)(a(i,j),j=1,n)
enddo 
write(*,*) ' enter the elements of matrix b'
read(*,*) ((b(i,j),j=1,n),i=1,m)
write(3,*) ' the elements of matrix b'
do i=1,n
write(3,*)(b(i,j),j=1,n)
enddo 
write(*,*) 'addition of matrices'
write(3,*) 'addition of matrices'
do i=1,m
 write(*,*) ((a(i,j)+b(i,j)),j=1,n)
  write(3,*) ((a(i,j)+b(i,j)),j=1,n)

enddo 
write(*,*) 'subtraction of matrices'
write(3,*) 'subtraction of matrices'
 
do i=1,m
 write(*,*) ((a(i,j)-b(i,j)),j=1,n)
 write(3,*) ((a(i,j)-b(i,j)),j=1,n)
enddo 
write(*,*) ' enter value 1 to continue'
read(*,*) k 
if(k==1) goto 4
end 


