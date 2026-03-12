# Production-Ready 3-Tier Infrastructure Deployment Using Terraform Modules

## Project Overview

This project demonstrates a **production-ready 3-tier architecture** deployed on AWS using Terraform modules.
The infrastructure is designed to be **modular, scalable, and secure**, eliminating manual provisioning and configuration drift.

### Architecture Tiers

* **Web Tier** – Public Subnet
* **Application Tier** – Private Subnet
* **Database Tier** – Private Subnet

Infrastructure provisioning is fully automated using **Terraform modules**.

---

# Architecture Diagram

```
                Internet
                    |
              Internet Gateway
                    |
            Public Subnet (AZ1)
             Web Server EC2
                (Nginx)
                    |
                NAT Gateway
                    |
            Private Subnet (AZ1)
             App Server EC2
                 (PHP)
                    |
            Private Subnet (AZ2)
               Amazon RDS
                 MySQL
```

---

# Technologies Used

* Terraform
* AWS EC2
* Amazon RDS
* VPC Networking
* GitHub

---

# Project Structure

```
3tier-terraform-project
│
├── provider.tf
├── main.tf
├── variables.tf
├── terraform.tfvars
│
├── modules
│   ├── vpc
│   ├── ec2
│   └── rds
│
└── README.md
```

---

# Terraform Modules

## VPC Module

Creates the networking layer:

* Custom VPC
* Public Subnets
* Private Subnets
* Internet Gateway
* NAT Gateway
* Route Tables

---

## EC2 Module

Creates EC2 instances used for:

* Web Server (Nginx)
* Application Server

---

## RDS Module

Creates a MySQL database instance with:

* Secure subnet group
* Private network access
* Restricted security group

---

# Deployment Steps

## 1 Clone the Repository

```
git clone https://github.com/Nikitapatil0304/3tier-terraform-project.git
```

## 2 Navigate to Project Directory

```
cd 3tier-terraform-project
```

## 3 Initialize Terraform

```
terraform init
```

<img src="https://github.com/user-attachments/assets/eaacad33-18b1-46fc-bf61-142873a17eab" width="900">

---

## 4 Review Execution Plan

```
terraform plan
```

<img src="https://github.com/user-attachments/assets/3f5a9877-f0b1-4ae9-8ef6-a85b525dcfe9" width="900">

---

## 5 Deploy Infrastructure

```
terraform apply
```

<img src="https://github.com/user-attachments/assets/2cd072bc-e5c9-401d-b99e-6855c3fb994e" width="900">

---

# Security Best Practices

This architecture follows security best practices:

* Web servers deployed in **public subnet**
* Application servers deployed in **private subnet**
* Database deployed in **private subnet**
* RDS access restricted to application tier
* Security groups control inter-tier communication
* Infrastructure managed using **Infrastructure as Code**

---

# Deployment Screenshots

## VPC

<img src="https://github.com/user-attachments/assets/bcf19bfd-c8b8-470e-8294-c22a3ec807ed" width="900">

---

## EC2 Instances

<img src="https://github.com/user-attachments/assets/18c1be07-c660-4351-bc9d-d550e018a731" width="900">

---

## RDS Database

<img src="https://github.com/user-attachments/assets/9d585a58-bdf2-43e1-842b-5b6cdccc9739" width="900">

---

## Web Application

<img src="https://github.com/user-attachments/assets/38ef3f62-dcbd-43c8-b495-fd010ebd7fa2" width="900">

---

# Outcome

This project demonstrates how to deploy a **secure and scalable 3-tier architecture using Terraform modules**, enabling infrastructure automation and consistent cloud environments.
