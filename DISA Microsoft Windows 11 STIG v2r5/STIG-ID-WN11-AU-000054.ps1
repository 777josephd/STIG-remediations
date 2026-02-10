<#
.SYNOPSIS
    The system must be configured to audit Logon/Logoff - Account Lockout failures.

.NOTES
    Author          : Joseph De Santiago
    LinkedIn        : linkedin.com/in/joseph-d-0875a324b/
    GitHub          : github.com/777josephd
    Date Created    : 2026-02-10
    Last Modified   : 2026-02-10
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN11-AU-000054

.TESTED ON
    Date(s) Tested  : 2026-02-10
    Tested By       : Joseph De Santiago
    Systems Tested  : Windows 11
    PowerShell Ver. : 5.1.26100.7462

.USAGE
    Download the script and execute.
    Example syntax:
    PS C:\> .\STIG-ID-WN11-AU-000054.ps1 
#>

AuditPol.exe /set /subcategory:"Account Lockout" /failure:enable
AuditPol.exe /get /subcategory:"Account Lockout"
