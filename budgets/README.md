# Budgets

Contains Azure budget alert configurations for `rg-platform-governance-demo`.

## Budget Tiers

| Budget | Threshold | Severity | Action |
|---|---|---|---|
| budget-cost-info | $25 | Informational | Email alert |
| budget-cost-warning | $50 | Warning | Email alert |
| budget-cost-critical | $80 | Critical | Email + tag |
| budget-cost-reset | $100 | Hard Stop | Trigger webhook → VM deallocated |

## Files

- `budget-configs.json` — Exported budget configurations
