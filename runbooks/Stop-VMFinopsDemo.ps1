# Stop-VMFinopsDemo.ps1
# Deallocates vm-finops-demo when budget threshold is breached
# Triggered via webhook from ag-finops-alerts
# PowerShell 7.2 | aa-finops-governance Automation Account

param (
    [Parameter(Mandatory=$false)] [string]$ResourceGroupName = "rg-platform-governance-demo",

    [Parameter(Mandatory=$false)] [string]$VMName = "vm-finops-demo"
)

# Authenticate using system-assigned managed identity
Connect-AzAccount -Identity

# Deallocate the VM
Write-Output "Stopping VM: $VMName in resource group: $ResourceGroupName"
Stop-AzVM -ResourceGroupName $ResourceGroupName -Name $VMName -Force

Write-Output "VM $VMName successfully deallocated."
