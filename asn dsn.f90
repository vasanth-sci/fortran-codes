real a(100)
integer n
open(3,file='output')
write(*,*) 'enter value of total number of inputs'
read*,n
write(3,*) 'total number of inputs is =',n
write(*,*) 'enter the inputs'
read(*,*) (a(i),i=1,n) 
write(3,*) 'the given numbers are'
write(3,*) (a(i),i=1,n)

write(*,*) 'order of arrangement'
do i=1,n-1
 do  j= i+1 ,n
 if (a(i)>a(j)) then
   t=a(i)
   a(i)=a(j)
   a(j)=t

  endif
  write(3,'(10f7.2)') (a(k),k=1,n)
     write(*,'(10f7.2)') (a(k),k=1,n)

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
