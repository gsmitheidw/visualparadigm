$ErrorActionPreference = 'Stop';

[array]$key = Get-UninstallRegistryKey -SoftwareName 'visualparadigm*'

$packageName='visualparadigm'

  $key | ForEach-Object {
  $packageArgs = @{
    packageName    = $packageName
    fileType       = 'EXE'
    silentArgs     = '-q'
    validExitCodes = @(0)
    file           = "C:\Program Files\Visual Paradigm 16.3\uninstaller\uninstall.exe"
  }
}
Uninstall-ChocolateyPackage @packageArgs