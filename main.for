! split initial file to several parts
	character*80 str,name,fname
      open(11,file='ssi_izmiran.txt')
! read header
	do while(1) 
		read(11,'(a80)', END=1) str
		if (str(15:15).eq.' ')str(15:15)='0'
		name=str(7:8)//str(15:16)//'_'//str(21:24)//'.dat'
		print*,trim(name)
		open(12,file=name)
	    WRITE(12,'(A80)')STR
		do irec=1,200
		   read(11,'(a80)',END=1) str
		   write(12,'(a80)') str
		end do
		close(12)
 	end do
1     continue
      close(1)
	
	end