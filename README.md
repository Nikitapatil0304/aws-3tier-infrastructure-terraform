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

<img width="1366" height="768" alt="Screenshot (38)" src="https://github.com/user-attachments/assets/d14ca22b-7d5b-4e6c-a98c-26c056126a83" />


---

## 4 Review Execution Plan

```
terraform plan
```

<img width="1366" height="768" alt="Screenshot (39)" src="https://github.com/user-attachments/assets/a79be012-fb28-4ffc-b805-41f1eabacb40" />


---

## 5 Deploy Infrastructure

```
terraform apply
```

<img width="1366" height="768" alt="Screenshot (41)" src="https://github.com/user-attachments/assets/7015c85f-5708-4dce-86f7-7945bd9b016d" />

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

<img width="1366" height="768" alt="Screenshot (47)" src="https://github.com/user-attachments/assets/769948b2-e3ea-4ca2-aaf7-ed49cb4a6e22" />

---

## EC2 Instances

<img width="1366" height="768" alt="Screenshot (46)" src="https://github.com/user-attachments/assets/8e9d8999-407a-452d-9da8-2b7e0e57ab3c" />

---

## RDS Database

<img width="1366" height="768" alt="Screenshot (49)" src="https://github.com/user-attachments/assets/ce70e992-9029-4098-ad49-e4cdf0c7c65c" />


---

## Web Application

![webpage](https://github.com/user-attachments/assets/0af8fd18-27f8-4d9c-84e6-282a4f978e26)


---

# Outcome

This project demonstrates how to deploy a **secure and scalable 3-tier architecture using Terraform modules**, enabling infrastructure automation and consistent cloud environments.
