<#
	.SYNOPSIS
		This script installs tools for our developers. This script should contain all modules needed for daily work

	.DESCRIPTION
		This script installs tools for our developers.

	.NOTES
		File Name  : developer-tools-win.ps1
    	Author     : info@xoap.io
    	Requires   : PowerShell V2 (please change as needed)
#>

# install applications

winget install --id JetBrains.Toolbox --source winget
winget install --id JetBrains.IntelliJIDEA.Community --source winget
winget install --id Microsoft.AzureCLI --source winget
winget install --id Microsoft.Git --source winget
winget install --id Microsoft.MSIXCore --source winget
winget install --id Microsoft.Office --source winget
winget install --id Microsoft.OfficeDeploymentTool --source winget
winget install --id Microsoft.PowerShell --source winget
winget install --id Microsoft.VC++2005Redist-x64 --source winget
winget install --id Microsoft.VC++2005Redist-x64 --source winget
winget install --id Microsoft.VC++2008Redist-x64 --source winget
winget install --id Microsoft.VC++2008Redist-x86 --source winget
winget install --id Microsoft.VC++2010Redist-x64 --source winget
winget install --id Microsoft.VC++2010Redist-x86 --source winget
winget install --id Microsoft.VC++2010Redist-x86 --source winget
winget install --id Microsoft.VC++2012Redist-x86 --source winget
winget install --id Microsoft.VC++2012Redist-x86 --source winget
winget install --id Microsoft.VC++2013Redist-x86 --source winget
winget install --id Microsoft.VC++2015-2019Redist-x64
winget install --id Microsoft.VC++2015-2019Redist-x86 --source winget
winget install --id Microsoft.VC++2015-2022Redist-x64 --source winget
winget install --id Microsoft.VC++2015-2022Redist-x86 --source winget
winget install --id Microsoft.VisualStudioCode --source winget
winget install --id Microsoft.WindowsTerminal --source winget
winget install --id Microsoft.WingetCreate --source winget
winget install --id Microsoft.dotnetRuntime.6-x64 --source winget
winget install --id Microsoft.dotnetRuntime.6-x86 --source winget
winget install --id Mozilla.Firefox --source winget
winget install --id OpenJS.NodeJS --source winget
winget install --id Oracle.JavaRuntimeEnvironment --source winget
winget install --id PuTTY.PuTTY --source winget
winget install --id Python.Python.3 --source winget
winget install --id Telerik.Fiddler.Everywhere --source winget
winget install --id WiresharkFoundation.Wireshark --source winget
winget install --id WinMerge.WinMerge --source winget
winget install --id WinSCP.WinSCP --source winget
winget install --id GitHub.GitHubDesktop --source winget
winget install --id Google.Chrome --source winget
winget install --id Hashicorp.Terraform --source winget
winget install --id Hashicorp.Packer --source winget
winget install --id Microsoft.Powershell --source winget

winget upgrade --accept-package-agreements --accept-source-agreements --silent --all

#### install PowerShell modules
####-------------------------------------------------------------------------------------------------------------------------------------------

Set-PSRepository -Name "PSGallery" -InstallationPolicy Trusted

Install-Module -Name Pester -Force -SkipPublisherCheck
Install-Module -Name Evergreen -Force
Install-Module -Name VSTeam -Force
Install-Module -Name Az -Force

Get-Module | Update-Module

#### install DSC modules
####-------------------------------------------------------------------------------------------------------------------------------------------

Install-Module -Name PSDesiredStateConfiguration -Repository PSGallery -MaximumVersion 2.99 -Force
Install-Module -Name NetworkingDsc -Force
Install-Module -Name ComputerManagementDsc -Force
Install-Module -Name CertificateDsc -Force
Install-Module -Name WSManDsc -Force
Install-Module -Name xWebAdministration -Force
Install-Module -Name xPSDesiredStateConfiguration -Force
Install-Module -Name xWindowsUpdate -Force
Install-Module -Name SystemLocaleDsc -Force
Install-Module -Name SqlServerDsc -Force
Install-Module -Name PSDscResources -Force
Install-Module -Name xCertificate -Force
Install-Module -Name StorageDsc -Force
Install-Module -Name Microsoft365DSC -Force
Install-Module -Name SecurityPolicyDsc -Force
Install-Module -Name SharePointDSC -Force
Install-Module -Name ActiveDirectoryCSDsc -Force
Install-Module -Name FileContentDsc -Force
Install-Module -Name xRemoteDesktopSessionHost -Force
Install-Module -Name xDnsServer -Force
Install-Module -Name AuditPolicyDsc -Force
Install-Module -Name xNetworking -Force
Install-Module -Name ActiveDirectoryDsc -Force
Install-Module -Name xSystemSecurity -Force
Install-Module -Name xFailOverCluster -Force
Install-Module -Name AccessControlDSC -Force
Install-Module -Name GPRegistryPolicyDsc -Force
Install-Module -Name xDhcpServer -Force
Install-Module -Name DFSDsc -Force
Install-Module -Name xHyper-V -Force
Install-Module -Name UpdateServicesDsc -Force
Install-Module -Name xExchange -Force
Install-Module -Name xSmbShare -Force
Install-Module -Name GroupPolicyDsc -Force
Install-Module -Name xActiveDirectory -Force
Install-Module -Name FileSystemDsc -Force
Install-Module -Name PrintManagementDsc -Force
Install-Module -Name xPendingReboot -Force
Install-Module -Name xBitlocker -Force
Install-Module -Name chocolatey -Force
Install-Module -Name JeaDsc -Force
Install-Module -Name SChannelDsc -Force
Install-Module -Name VMware.vSphereDSC -Force
Install-Module -Name DSCR_Application -Force
Install-Module -Name xDSCDomainjoin -Force
Install-Module -Name DSCR_Shortcut -Force
Install-Module -Name 7ZipArchiveDsc -Force
Install-Module -Name cChoco -Force
Install-Module -Name XenDesktop7 -Force
Install-Module -Name OneDriveDsc -Force
Install-Module -Name DSCR_LogonScript -Force
Install-Module -Name ResourceControllerDSC -Force
Install-Module -Name AdfsDsc -Force
Install-Module -Name XenDesktop7Lab -Force
Install-Module -Name AzureConnectedMachineDsc -Force
Install-Module -Name cMDTBuildLab -Force
Install-Module -Name BaselineManagement -Force
Install-Module -Name cSpeculationControlFixes -Force
Install-Module -Name CitrixPVS -Force
Install-Module -Name AzureWvdDsc -Force
Install-Module -Name VirtualEngine.EvergreenDsc -Force
Install-Module -Name MariaDB.DSC -Force
Install-Module -Name xDSCDownloadFile -Force
Install-Module -Name PipelinesAzureAgent -Force

####-------------------------------------------------------------------------------------------------------------------------------------------
#### clone git repos
####-------------------------------------------------------------------------------------------------------------------------------------------

New-Item -ItemType Directory $env:systemdrive\Users\$env:username\Documents\github

Set-Location -Path $env:systemdrive\Users\$env:username\Documents\github

git clone https://github.com/pester/Pester.git
git clone https://github.com/Azure/RDS-Templates
git clone https://github.com/VirtualEngine/XenDesktop7Lab
git clone https://github.com/microsoft/AzureSuperpowers
git clone https://github.com/ashwini33/aws_workspace
git clone https://github.com/awsandy/workspaces
git clone https://github.com/jnarayanan/AWS-Workspaces-Portal
git clone https://github.com/aaronparker/Evergreen/
git clone https://github.com/andif888/vagrant-devicetrust-1vm
git clone https://github.com/kreuzwerker/vmimport-terraform
git clone https://github.com/scriptrunner
git clone https://github.com/scriptrunner/PoShCrashCourse.git
git clone https://github.com/TomHickling/WVD-CI-CD
git clone https://github.com/microsoft/MSIX-Labs
git clone https://github.com/GoogleCloudPlatform/terraformer
git clone https://github.com/kvz/json2hcl
git clone https://github.com/microsoftgraph/powershell-intune-samples
git clone https://github.com/bfrankMS/wvdsandbox
git clone https://github.com/Azure/CloudShell
git clone https://github.com/pester/AzureDevOpsExtension
