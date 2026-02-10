<#
.SYNOPSIS
    IPv6 source routing must be configured to highest protection. Configuring the system to disable IPv6 source routing protects against spoofing.

.NOTES
    Author          : Joseph De Santiago
    LinkedIn        : linkedin.com/in/joseph-d-0875a324b/
    GitHub          : github.com/777josephd
    Date Created    : 2026-02-10
    Last Modified   : 2026-02-10
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN11-CC-000020

.TESTED ON
    Date(s) Tested  : 2026-02-10
    Tested By       : Joseph De Santiago
    Systems Tested  : Windows 11
    PowerShell Ver. : 5.1.26100.7462

.USAGE
    Download the script and execute.
    Example syntax:
    PS C:\> .\STIG-ID-WN11-CC-000020.ps1 
#>

New-Item -Path "HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip6\Parameters" -Force | Out-Null
New-ItemProperty `
  -Path "HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip6\Parameters" `
  -Name "DisableIpSourceRouting" `
  -PropertyType DWord `
  -Value 2 `
  -Force
