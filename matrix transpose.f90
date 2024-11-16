 real a(10,10)
 integer m,n,k 
 open(3,file='output')
4 write(*,*) 'enter number of rows and columns'
 read(*,*) m,n
 write(*,*) ' enter the elements of matrix'
 read(*,*) ((a(i,j),j=1,n),i=1,m)
 write(*,*) 'the given matrix is'
 write(3,*) 'the given matrix is'
 do i=1,m
 write(*,*) (a(i,j),j=1,n)
 write(3,*) (a(i,j),j=1,n)
 enddo
 write(*,*) 'transpose of given matrix'
 write(3,*) 'transpose of given matrix'
 do j=1,n
 write(*,*) (a(i,j),i=1,m)
 write(3,*) (a(i,j),i=1,m)
 enddo
 write(*,*) 'enter value 1 to continue'
 read(*,*) k
 if(k==1) goto 4
 end
