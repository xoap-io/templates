<#
	.SYNOPSIS
		This script installs PowerShell modules for our developers. This script should contain all modules needed for daily work

	.DESCRIPTION
		This script installs PowerShell modules for our developers.

	.NOTES
		File Name  : developer-modules-mac.ps1
    	Author     : info@xoap.io
    	Requires   : PowerShell V2 (please change as needed)
#>

#Requires -Version 2.0
#Requires -RunAsAdministrator

# install PowerShell modules
Install-Module -Name VSTeam -Repository PSGallery -Force
Install-Module -Name Az -Repository PSGallery -Force
Install-Module -Name PSDesiredStateConfiguration -Repository PSGallery -MaximumVersion 2.99 -Force
