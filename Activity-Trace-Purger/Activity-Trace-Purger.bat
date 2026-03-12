@echo off
:: PREFETCH, RECENT, MRU, .lnk, EVENT LOG tamamen temizlenir
:: Sessiz çalışır (gizli), WinPrefetchView ve LastActivityView'e yakalanmayı önlemeye yardımcı olur

:: Kapanmadan önce son dosyaları ve RAM belleğini minimumda bırakmaya çalış
:: Program geçmişlerini sil
del /f /q "%APPDATA%\Microsoft\Windows\Recent\*.*" >nul 2>&1
del /f /q C:\Windows\Prefetch\*.* >nul 2>&1
del /f /q "%USERPROFILE%\Desktop\*.lnk" >nul 2>&1
del /f /q "%USERPROFILE%\Documents\*.lnk" >nul 2>&1
del /f /q "%USERPROFILE%\Downloads\*.lnk" >nul 2>&1

:: Registry MRU (Run geçmişi vb.)
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\RunMRU" /f >nul 2>&1
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\OpenSavePidlMRU" /f >nul 2>&1

:: Event loglarını temizle
for /f %%x in ('wevtutil el') do wevtutil cl "%%x" >nul 2>&1

:: Sistem Prefetch yeniden başlamasın diye zaman kazandırıcı temp dosyaları sil
del /f /q "%TEMP%\*.*" >nul 2>&1

exit
