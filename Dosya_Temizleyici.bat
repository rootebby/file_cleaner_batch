@echo off



color B

:menu
cls
echo. root@ebby Dosya Temizleyici
echo. Secmek istediginiz numarayi yazin!
echo.
echo [1] Temp Dosyalarini Sil
echo ================================================================
echo [2] Disk Temizleme
echo ================================================================
echo. Herhangi bir Secenek ise yaramazsa, bu dosyayi yonetici olarak calistirmayi deneyin.
echo ==========================================================================
set /p op=">>> "
if %op%==1 goto 1
if %op%==2 goto 2
if %op%==3 goto 3
if %op%==4 goto exit
goto error

:1
cls
echo ========================
echo. Gecici klasorler
echo ========================
echo.
ping localhost -n 3 >nul
start %temp%
start Temp
start prefetch
cls
echo =====================================
echo. Simdi klasordeki tum dosyalar siliniyor.
echo =====================================
pause
goto menu


:2
cls
echo ===================
echo. Disk Temizleme
echo ===================
echo.
echo temizlik basliyor Lutfen bekleyin....
ping localhost -n 3 >nul
start Cleanmgr
cls
echo =================
echo. Surucu Sec c:
echo =================
pause
goto menu



:error
cls
echo bilinmeyen komut arasinda secim yap 1-5.
ping localhost -n 3 >nul
goto menu
:exit