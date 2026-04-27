# Terraform AWS VPC Base Module

This repository contains a modular Terraform configuration for creating a reusable AWS networking foundation.

It is designed as a **base template** for future infrastructure projects.

---

## What This Project Creates

This Terraform configuration provisions the following AWS resources:

### Networking

- 1 VPC
- 2 public subnets (across 2 Availability Zones)
- 2 private subnets (across 2 Availability Zones)
- 1 Internet Gateway
- 1 public route table (with internet access)
- 1 private route table (no internet access)

---

## Architecture Overview

- Public subnets:
  - connected to the Internet Gateway
  - suitable for load balancers, bastion hosts, or public-facing services

- Private subnets:
  - isolated from direct internet access
  - suitable for application servers, ECS tasks, databases

---

## Purpose

This repository is intended to:

- serve as a **learning project** for Terraform and AWS networking
- act as a **reusable base module** for future infrastructure
- provide a clean starting point for adding:
  - ECS / EKS
  - Application Load Balancers
  - RDS databases
  - NAT Gateways (if needed later)

---

## Project Structure

```text
.
├── main.tf
├── variables.tf
├── outputs.tf
├── terraform.tfvars
└── modules/
    └── vpc/
        ├── main.tf
        ├── variables.tf
        └── outputs.tf