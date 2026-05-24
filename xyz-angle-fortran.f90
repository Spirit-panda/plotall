program  deal
implicit none
      integer :: M=9000, N=10, i, j
      real :: c
      real,allocatable::old(:,:)
        
      open(10, file="restart.tbcro300.out", status='old')
      read(10,*) 
      read(10,*) 
      read(10,*) 
      read(10,*) 
      read(10,*) 
      read(10,*) 
      read(10,*) 

         allocate(old(M,N))
         do j=1,M
                read(10,*) old(j,1:7)
         end do

close(10)

open(20,file='angleall.out', status='unknown')
write(20,*)"step iter site M Mx My Mz thetax thetay thetaz"
        do j=1,M
         old(j,8)=acos(old(j,5)/old(j,4))*180/3.14159265
         old(j,9)=acos(old(j,6)/old(j,4))*180/3.14159265
         old(j,10)=acos(old(j,7)/old(j,4))*180/3.14159265
         write(20,*) old(j,1:10)
        end do
      
close(20)


open(40,file='angletb.out', status='unknown')
write(40,*)"step iter site M Mx My Mz thetax thetay thetaz"
open(50,file='anglecr.out', status='unknown')
write(50,*)"step iter site M Mx My Mz thetax thetay thetaz"

        do j=1,M
         old(j,8)=acos(old(j,5)/old(j,4))*180/3.14159265
         old(j,9)=acos(old(j,6)/old(j,4))*180/3.14159265
         old(j,10)=acos(old(j,7)/old(j,4))*180/3.14159265
         
         if (old(j,4)>5) then
                 write(40,*) old(j,1:10)
         else
                 write(50,*)  old(j,1:10)
      
         end if       
         end do
close(40)
close(50)
close(00)



end program deal
