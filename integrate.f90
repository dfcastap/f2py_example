!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!1!!!!!!!!

subroutine integrate(area,fname,nwav)

        implicit none
        !Pythonic array indices ahead, from 0 to n-1.
        integer (kind=4), intent(in) :: nwav
        integer (kind=4) :: i,j,k
        real (kind=8), dimension(0:nwav-1,0:10) :: flux
        !f2py depend(nwav) flux
        character (len=40), intent(in) :: fname
        
        real (kind=8), dimension(0:9) ,intent(out) :: area
        real (kind=8) :: tmp

        open(unit=7,file=fname,status="OLD")
        do j = 0, nwav-1
            read(7,*) (flux(j,k),k=0,10)
        enddo
        close(7)
        
        area(:) = 0
        do i = 0, 9
            tmp = 0
            do j = 0, nwav-2
                tmp = (flux(j+1,0)-flux(j,0))*((flux(j+1,i+1)+flux(j,i+1))/2)
                area(i) = area(i) + tmp
            enddo
            print *, i
        enddo

end subroutine  ! integrate

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!1!!!!1!!1!!!!!1!!!!!!!!!!!!!!!!!
