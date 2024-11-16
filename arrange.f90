dimension a(1000)
integer n
read*,n
open(2,file='input.txt')
open(3,file='output')
read(2,*) (a(i),i=1,n) 
write(3,*) 'the given numbers are'
write(3,*) (a(i),i=1,n)
do i=1,(n-1)
 do  j=(i+1),n
 if (a(i)>a(j)) then
   t=a(i)
   a(i)=a(j)
   a(j)=t
  endif
 enddo
enddo
write(*,*) 'ascending order of given numbers'
write(3,*) 'ascending order of given numbers'
write(*,*) (a(i),i=1,n)
write(3,*) (a(i),i=1,n)
write(*,*) 'descending order of given numbers'
write(3,*) 'descending order of given numbers'
write(*,*) (a(i),i=n,1,-1)
write(3,*) (a(i),i=n,1,-1)
write(3,*) 'the largest number is =',a(n)
write(*,*) 'the largest number is =',a(n)
write(3,*) 'the smallest number is =',a(1)
write(*,*) 'the smallest number is =',a(1)
end




