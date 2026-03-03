# Azure FinOps Governance Demo

**Governance-first cost control on Azure — automated, observable, and enforced.**

This repository documents a fully automated Azure FinOps governance chain built
to demonstrate budget enforcement, alert orchestration, and VM lifecycle control
in a real Azure environment.

## Architecture

| Layer | Resource |
|---|---|
| Infrastructure | `vm-finops-demo` (Standard D2s v3, East US 2) |
| Resource Group | `rg-platform-governance-demo` |
| Budget Alerts | 4 tiers: $25 (info) → $50 (warning) → $80 (critical) → $100 (hard stop) |
| Alert Routing | `ag-finops-alerts` Action Group |
| Automation | `aa-finops-governance` Automation Account |
| Enforcement | `Stop-VMFinopsDemo.ps1` runbook (PowerShell 7.2) |

## Governance Chain

→ Budget threshold breached
  → ag-finops-alerts (Action Group)
    → webhook-budget-hardstop
      → Stop-VMFinopsDemo.ps1 runbook
        → VM deallocated

## Contents

- budgets/ — Budget alert configurations (JSON)
- runbooks/ — PowerShell automation runbook
- automation/ — Webhook and chain documentation
- evidence/ — Screenshots and deployment evidence
- docs/ — Confluence runbook reference

## Key Principle

> Governance outweighs optimization — this demo is my proof of concept.

## Related

- Confluence Runbook: ./docs/confluence-runbook-link.md
- ai-conversation-toolkit: https://github.com/dicemandcdc/ai-conversation-toolkit
