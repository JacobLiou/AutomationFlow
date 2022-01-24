@REM 自动化背景
@REM 对大量有规律的文件进行重命名

@echo off
Setlocal enabledelayedexpansion

Set "Pattern=Repository"
Set "Replace=Service"

For %%# in (".\*.cs") Do (
    Set "File=%%~nx#"
    Ren "%%#" "!File:%Pattern%=%Replace%!"
)

pause
