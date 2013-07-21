rem @echo off
rem This batch file created by Tsuyoshi CHO <Tsuyoshi.CHO@Gmail.com>.
rem License : GNU LGPL

rem setup dir info
pushd .
cd %~dp0

:SETUP
set NKF_CMD="..\bin\nkf32.exe -w"
set SRC_1=App\MikuMikuDance\MMD\readme.txt
set SRC_2=App\MikuMikuDancex64\MMD\readme.txt
set SRC_3=App\MikuMikuDance\MME\MMEffect.txt
set SRC_4=App\MikuMikuDance\MoggDxOpenNI\Readme_JPN.txt

:GENHELP
echo Generate help.html

set TARGET=.\help.html
type nul > %TARGET%

:GENEULA
echo Generate EULA.txt

set TARGET=App\AppInfo\EULA.txt
type nul > %TARGET%

echo on

:END
@popd
@echo on
exit /b
