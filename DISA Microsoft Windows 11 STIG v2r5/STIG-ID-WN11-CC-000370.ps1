<#
.SYNOPSIS
    The convenience PIN for Windows 11 must be disabled.

.NOTES
    Author          : Joseph De Santiago
    LinkedIn        : linkedin.com/in/joseph-d-0875a324b/
    GitHub          : github.com/777josephd
    Date Created    : 2026-02-10
    Last Modified   : 2026-02-10
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN11-CC-000370

.TESTED ON
    Date(s) Tested  : 2026-02-10
    Tested By       : Joseph De Santiago
    Systems Tested  : Windows 11
    PowerShell Ver. : 5.1.26100.7462

.USAGE
    Download the script and execute.
    Example syntax:
    PS C:\> .\STIG-ID-WN11-CC-000370.ps1 
#>

New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows\System" -Force | Out-Null
New-ItemProperty `
  -Path "HKLM:\Software\Policies\Microsoft\Windows\System" `
  -Name "AllowDomainPINLogon" `
  -PropertyType DWord `
  -Value 0 `
  -Force
