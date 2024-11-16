character * 10 a(10), t	,up
integer k ,j ,i
open(3,file='output')
4 write(*,*) 'enter value of total number of inputs'
read*,n
write(3,*) 'total number of inputs is =',n
write(*,*) 'enter the inputs'
read(*,*) (a(i),i=1,n) 
write(3,*) 'the given words are'
write(3,*) (a(i),i=1,n)
write(*,*) 'order of arrangement'
write(3,*) 'order of arrangement'


 do i=1,n-1
 do  j= i+1 ,n
 if (up(a(i))>up(a(j))) then
   t=a(i)		
   a(i)=a(j)
   a(j)=t

  endif

  write(3,*) (a(k),k=1,n)
     write(*,*) (a(k),k=1,n)

 enddo
enddo
write(*,*) 'ascending order of given words'
write(3,*) 'ascending order of given words'
write(*,*) (a(i),i=1,n)
write(3,*) (a(i),i=1,n)
write(*,*) 'descending order of given words'
write(3,*) 'descending order of given words'
write(*,*) (a(i),i=n,1,-1)
write(3,*) (a(i),i=n,1,-1)
write(*,*) ' enter value 1 to continue'
read(*,*) e 
if (e==1) goto 4
end
 character * 10 function up(a)
 character * 10 b ,a 
 do i= 1,10 
  j= iachar(a(i:i))
  if (j<91) then 
  b(i:i) = achar(iachar(a(i:i)) + 32 ) 
  else 
  b(i:i) = a(i:i)
  endif
 enddo
 up = b 
 return 
 end 
