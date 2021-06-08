@Echo Off
ECHO Code wird generiert.
ECHO.
Setlocal EnableDelayedExpansion
Set _RNDLength=8
Set _Alphanumeric=ABCDEFGHJKLMNPQRSTUVWXYZabcdefghjkmnpqrstuvwxyz23456789
Set _Str=%_Alphanumeric%987654321
:_LenLoop
IF NOT "%_Str:~18%"=="" SET _Str=%_Str:~9%& SET /A _Len+=9& GOTO :_LenLoop
SET _tmp=%_Str:~9,1%
SET /A _Len=_Len+_tmp
Set _count=0
SET _RndAlphaNum=
:_loop
Set /a _count+=1
SET _RND=%Random%
Set /A _RND=_RND%%%_Len%
SET _RndAlphaNum=!_RndAlphaNum!!_Alphanumeric:~%_RND%,1!
If !_count! lss %_RNDLength% goto _loop
chcp 1252>nul
ECHO !_RndAlphaNum!| clip
ECHO Der Code !_RndAlphaNum! wurde erstellt und in die Zwischenablage kopiert.
ECHO.
pause
