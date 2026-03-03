# Automation

Documents the webhook and alert chain connecting Azure budgets to the automation runbook.

## Chain

→ budget-cost-reset ($100 threshold breached)
  → ag-finops-alerts (Action Group)
    → webhook-budget-hardstop
      → Stop-VMFinopsDemo.ps1 runbook
        → vm-finops-demo deallocated

## Files

- `webhook-budget-hardstop.md` — Webhook configuration and chain documentation
