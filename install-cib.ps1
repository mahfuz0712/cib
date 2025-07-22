# Check Directories
$mingwLib = "C:\Program Files\CodeBlocks\MinGW\lib"
$mingwInclude = "C:\Program Files\CodeBlocks\MinGW\include"

if (!(Test-Path $mingwLib) -or !(Test-Path $mingwInclude)) {
    Write-Host "❌ Code::Blocks or MinGW not installed in default path." -ForegroundColor Red
    exit
}

# Download files
$cibAUrl = "https://raw.githubusercontent.com/mahfuz0712/cib/main/libcib.a"
$cibHUrl = "https://raw.githubusercontent.com/mahfuz0712/cib/main/cib.h"

$libPath = "$mingwLib\libcib.a"
$includePath = "$mingwInclude\cib.h"

Invoke-WebRequest -Uri $cibAUrl -OutFile $libPath
Invoke-WebRequest -Uri $cibHUrl -OutFile $includePath

Write-Host "Installed CIB (C In Bangla ) Library successfully!" -ForegroundColor Green


