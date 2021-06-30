$ErrorActionPreference = 'Stop'; 
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$env:DeployShare='CHANGE THIS TO \\PATH\ OR C:\PATH'

if ($env:DeployShare -eq $null) {
Write-Warning "No DeployShare defined"

}
# CHANGE-THIS-NEXT-LINE:
$url = "$env:DeployShare\Resources\visualparadigm\Visual_Paradigm_16_3_20210701_Win64.exe"

if ($env:DeployShare -eq $null) {
Throw "No DeployShare defined"
}


$packageArgs = @{
  packageName   = 'visualparadigm'
  unzipLocation = $toolsDir
  fileType      = 'exe' 
  url           = $url
  file          = $url

  softwareName  = 'visualparadigm*'

  checksum      = '5602C63AA90C9C8CBFC2AC69C69073F27DE37284D84DC332B7F2B79E31279BE2'
  checksumType  = 'sha256' 

  # MSI
  silentArgs    = '-q -console'
  validExitCodes= @(0, 3010, 1641)
 
}

Install-ChocolateyInstallPackage @packageArgs 
