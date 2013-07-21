rem @echo off
rem This batch file created by Tsuyoshi CHO <Tsuyoshi.CHO@Gmail.com>.
rem License : GNU LGPL

:SETUP
rem setup dir info
pushd .
cd %~dp0

set REL_ROOT=Release Environment
set APP_ROOT=%REL_ROOT%\App
set DOC_ROOT=.\Document
set BIN_ROOT=.\bin

set NKF_CMD="%BIN_ROOT%\nkf32.exe" -w -x -Lw
set SRC_1_1="%APP_ROOT%\MikuMikuDance\MMD\readme.txt"
set SRC_1_2="%APP_ROOT%\MikuMikuDancex64\MMD\readme.txt"
set SRC_2="%APP_ROOT%\MikuMikuDance\MME\MMEffect.txt"
set SRC_3="%APP_ROOT%\MikuMikuDance\DxOpenNI\readme.txt"
set SRC_LGPL="%APP_ROOT%\MikuMikuDance\DxOpenNI\LGPL.txt"
set SRC_4_1="%APP_ROOT%\MikuMikuDance\MoggDxOpenNI\Readme_ENG.txt"
set SRC_4_2="%APP_ROOT%\MikuMikuDance\MoggDxOpenNI\Readme_JPN.txt"

:GENHELP
echo Generate help.html

set TARGET="%REL_ROOT%\help.html"
type nul > %TARGET%

set HTML_HEAD="%DOC_ROOT%\help_head.txt"
set HTML_TAIL="%DOC_ROOT%\help_tail.txt"

set HTML_PART1_PRE="%DOC_ROOT%\help_part1_pre.txt"
set HTML_PART1_MID="%DOC_ROOT%\help_part1_mid.txt"
set HTML_PART2_PRE="%DOC_ROOT%\help_part2_pre.txt"
set HTML_PART3_PRE="%DOC_ROOT%\help_part3_pre.txt"
set HTML_PART4_PRE="%DOC_ROOT%\help_part4_pre.txt"
set HTML_PART4_MID="%DOC_ROOT%\help_part4_mid.txt"

set HTML_PARTX_POST="%DOC_ROOT%\help_partx_post.txt"

set HTML_DXOPENNI_LICENSE="%DOC_ROOT%\help_DxOpenNI_License.txt"

type %HTML_HEAD% | %NKF_CMD% >> %TARGET%

type %HTML_PART1_PRE% | %NKF_CMD% >> %TARGET%
type %SRC_1_1% | %NKF_CMD% >> %TARGET%
type %HTML_PART1_MID% | %NKF_CMD% >> %TARGET%
type %SRC_1_2% | %NKF_CMD% >> %TARGET%
type %HTML_PARTX_POST% | %NKF_CMD% >> %TARGET%

type %HTML_PART2_PRE% | %NKF_CMD% >> %TARGET%
type %SRC_2% | %NKF_CMD% >> %TARGET%
type %HTML_PARTX_POST% | %NKF_CMD% >> %TARGET%

type %HTML_PART3_PRE% | %NKF_CMD% >> %TARGET%
type %SRC_3% | %NKF_CMD% >> %TARGET%
type %HTML_PARTX_POST% | %NKF_CMD% >> %TARGET%

type %HTML_PART4_PRE% | %NKF_CMD% >> %TARGET%
type %SRC_4_1% | %NKF_CMD% >> %TARGET%
type %HTML_PART4_MID% | %NKF_CMD% >> %TARGET%
type %SRC_4_2% | %NKF_CMD% >> %TARGET%
type %HTML_PARTX_POST% | %NKF_CMD% >> %TARGET%

type %HTML_DXOPENNI_LICENSE% | %NKF_CMD% >> %TARGET%
type %HTML_TAIL% | %NKF_CMD% >> %TARGET%

:GENEULA
echo Generate EULA.txt

set TARGET="%APP_ROOT%\AppInfo\EULA.txt"
type nul > %TARGET%

set EULA_PART1="%DOC_ROOT%\EULA_part1.txt"
set EULA_PART2="%DOC_ROOT%\EULA_part2.txt"
set EULA_PART3="%DOC_ROOT%\EULA_part3.txt"
set EULA_SEPARATOR="%DOC_ROOT%\EULA_separator.txt"
set EULA_PART_LGPL="%DOC_ROOT%\EULA_part_LGPL.txt"

type %EULA_PART1% | %NKF_CMD% >> %TARGET%
echo. >> %TARGET%
type %EULA_SEPARATOR% | %NKF_CMD% >> %TARGET%
echo. >> %TARGET%
type %SRC_1_1% | %NKF_CMD% >> %TARGET%
echo. >> %TARGET%
type %EULA_SEPARATOR% | %NKF_CMD% >> %TARGET%
echo. >> %TARGET%
type %SRC_1_2% | %NKF_CMD% >> %TARGET%
echo. >> %TARGET%

type %EULA_PART2% | %NKF_CMD% >> %TARGET%
echo. >> %TARGET%
type %EULA_SEPARATOR% | %NKF_CMD% >> %TARGET%
echo. >> %TARGET%
type %SRC_2% | %NKF_CMD% >> %TARGET%
echo. >> %TARGET%

type %EULA_PART3% | %NKF_CMD% >> %TARGET%
echo. >> %TARGET%
type %EULA_SEPARATOR% | %NKF_CMD% >> %TARGET%
echo. >> %TARGET%
type %SRC_3% | %NKF_CMD% >> %TARGET%
echo. >> %TARGET%
type %EULA_SEPARATOR% | %NKF_CMD% >> %TARGET%
echo. >> %TARGET%
type %SRC_4_1% | %NKF_CMD% >> %TARGET%
echo. >> %TARGET%
type %EULA_SEPARATOR% | %NKF_CMD% >> %TARGET%
echo. >> %TARGET%
type %SRC_4_2% | %NKF_CMD% >> %TARGET%
echo. >> %TARGET%

type %EULA_PART_LGPL% | %NKF_CMD% >> %TARGET%
echo. >> %TARGET%
type %EULA_SEPARATOR% | %NKF_CMD% >> %TARGET%
echo. >> %TARGET%
type %SRC_LGPL% | %NKF_CMD% >> %TARGET%
echo. >> %TARGET%

:END
@popd
@echo on
exit /b
