# Runbooks

Contains PowerShell automation runbooks for `aa-finops-governance` Automation Account.

## Files

- `Stop-VMFinopsDemo.ps1` — Deallocates `vm-finops-demo` when $100 budget threshold is breached. PowerShell 7.2. Triggered via webhook from `ag-finops-alerts`.
