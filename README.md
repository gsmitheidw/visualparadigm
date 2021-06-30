![Visual Paradigm Logo](https://cdn.rawgit.com/gsmitheidw/visualparadigm-ce/8df28b64/visualparadigm-icon.png "Visual Paradigm")
# Visual Paradigm Community Edition

| Chocolatey package of Visual Paradigm Academic Install |
| ------------------------------------------------------- |
| Visual Paradigm (VP-UML) is a UML CASE Tool supporting UML 2, SysML and Business Process Modeling Notation (BPMN). |
| This is not a nupkg but the recipe to create a Chocolatey nuget package on a private/company repo |
| --------------------------------------------------------- |
| Recipe instructions:  (assumes you already have chocolatey & git installed on your admin machine) 
| 1. Clone this repo  
| 2. Amend the following items: 
| * ChocolateyInstall.ps1 requires correct paths to the setup executable. These can be local repo or unc path. 
| * Either Amend ap_install_config.xml or download your own from https://ap.visual-paradigm.com/ using your credentials |
| * You may need to edit install_config.xml if you need to add corporate proxy information  
| 3. Go to the folder and run choco pack, this will create a nupkg file which you host on a private repo or local unc path. |
|  |
| Note if you need a different version to 16.3 you will need to amend visualparadigm.nuspec 
| and run Get-FileHash against the setup executable to get a correct checksum to be added to 
| ChocolateyInstall.ps1 in place of the one provided |

