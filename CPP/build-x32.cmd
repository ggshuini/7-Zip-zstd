@echo off

set ROOT=%cd%\7zip
if not defined OUTDIR set OUTDIR=%ROOT%\bin32
if not defined ERRFILE set ERRFILE=%cd%\error.txt
if not defined SUBSYS set SUBSYS="5.01"
mkdir %OUTDIR%

set OPTS=MY_STATIC_LINK=1 /NOLOGO
set LFLAGS=/SUBSYSTEM:WINDOWS,%SUBSYS%

cd %ROOT%\Bundles\Format7zExtract
nmake %OPTS%
IF %errorlevel% NEQ 0 echo "Error x32 @ 7zxa.dll" >> %ERRFILE%
copy o\7zxa.dll %OUTDIR%\7zxa.dll

cd %ROOT%\Bundles\Format7z
nmake %OPTS%
IF %errorlevel% NEQ 0 echo "Error x32 @ 7za.dll" >> %ERRFILE%
copy o\7za.dll %OUTDIR%\7za.dll

cd %ROOT%\Bundles\Format7zF
nmake %OPTS%
IF %errorlevel% NEQ 0 echo "Error x32 @ 7z.dll" >> %ERRFILE%
copy o\7z.dll %OUTDIR%\7z.dll

cd %ROOT%\UI\FileManager
nmake %OPTS%
IF %errorlevel% NEQ 0 echo "Error x32 @ 7zFM.exe" >> %ERRFILE%
copy o\7zFM.exe %OUTDIR%\7zFM.exe

cd %ROOT%\UI\GUI
nmake %OPTS%
IF %errorlevel% NEQ 0 echo "Error x32 @ 7zG.exe" >> %ERRFILE%
copy o\7zG.exe %OUTDIR%\7zG.exe

cd %ROOT%\UI\Explorer
nmake %OPTS%
IF %errorlevel% NEQ 0 echo "Error x32 @ 7-zip.dll" >> %ERRFILE%
copy o\7-zip.dll %OUTDIR%\7-zip.dll

cd %ROOT%\Bundles\SFXWin
nmake %OPTS%
IF %errorlevel% NEQ 0 echo "Error x32 @ 7z.sfx" >> %ERRFILE%
copy o\7z.sfx %OUTDIR%\7z.sfx

cd %ROOT%\Bundles\Codec_brotli
nmake %OPTS%
IF %errorlevel% NEQ 0 echo "Error x32 @ brotli-x32.dll" >> %ERRFILE%
copy o\brotli.dll %OUTDIR%\brotli-x32.dll

cd %ROOT%\Bundles\Codec_lizard
nmake %OPTS%
IF %errorlevel% NEQ 0 echo "Error x32 @ lizard-x32.dll" >> %ERRFILE%
copy o\lizard.dll %OUTDIR%\lizard-x32.dll

cd %ROOT%\Bundles\Codec_lz4
nmake %OPTS%
IF %errorlevel% NEQ 0 echo "Error x32 @ lz4-x32.dll" >> %ERRFILE%
copy o\lz4.dll %OUTDIR%\lz4-x32.dll

cd %ROOT%\Bundles\Codec_lz5
nmake %OPTS%
IF %errorlevel% NEQ 0 echo "Error x32 @ lz5-x32.dll" >> %ERRFILE%
copy o\lz5.dll %OUTDIR%\lz5-x32.dll

cd %ROOT%\Bundles\Codec_zstd
nmake %OPTS%
IF %errorlevel% NEQ 0 echo "Error x32 @ zstd-x32.dll" >> %ERRFILE%
copy o\zstd.dll %OUTDIR%\zstd-x32.dll

cd %ROOT%\Bundles\Codec_flzma2
nmake %OPTS%
IF %errorlevel% NEQ 0 echo "Error x32 @ flzma2-x32.dll" >> %ERRFILE%
copy o\flzma2.dll %OUTDIR%\flzma2-x32.dll

cd %ROOT%\..\..\C\Util\7zipInstall
nmake %OPTS%
IF %errorlevel% NEQ 0 echo "Error x32 @ Install-x32.exe" >> %ERRFILE%
copy o\7zipInstall.exe %OUTDIR%\Install-x32.exe

cd %ROOT%\..\..\C\Util\7zipUninstall
nmake %OPTS%
IF %errorlevel% NEQ 0 echo "Error x32 @ Uninstall.exe" >> %ERRFILE%
copy o\7zipUninstall.exe %OUTDIR%\Uninstall.exe

set LFLAGS=/SUBSYSTEM:CONSOLE,%SUBSYS%
cd %ROOT%\UI\Console
nmake %OPTS%
IF %errorlevel% NEQ 0 echo "Error x32 @ 7z.exe" >> %ERRFILE%
copy o\7z.exe %OUTDIR%\7z.exe

cd %ROOT%\Bundles\SFXCon
nmake %OPTS%
IF %errorlevel% NEQ 0 echo "Error x32 @ 7zCon.sfx" >> %ERRFILE%
copy o\7zCon.sfx %OUTDIR%\7zCon.sfx

cd %ROOT%\Bundles\Alone
nmake %OPTS%
IF %errorlevel% NEQ 0 echo "Error x32 @ 7za.exe" >> %ERRFILE%
copy o\7za.exe %OUTDIR%\7za.exe

:ende
cd %ROOT%\..

