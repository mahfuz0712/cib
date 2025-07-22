# Check Directories
$mingwLib = "C:\Program Files\CodeBlocks\MinGW\lib"
$mingwInclude = "C:\Program Files\CodeBlocks\MinGW\include"

if (!(Test-Path $mingwLib) -or !(Test-Path $mingwInclude)) {
    Write-Host "❌ Code::Blocks or MinGW not installed in default path." -ForegroundColor Red
    exit
}

# Download files
$cibAUrl = "https://github.com/mahfuz0712/cib/blob/main/libcib.a"
$cibHUrl = "https://github.com/mahfuz0712/cib/blob/main/cib.h"

$libPath = "$mingwLib\cib.a"
$includePath = "$mingwInclude\cib.h"

Invoke-WebRequest -Uri $cibAUrl -OutFile $libPath
Invoke-WebRequest -Uri $cibHUrl -OutFile $includePath

Write-Host "✅ Installed cib.a and cib.h successfully!" -ForegroundColor Green
