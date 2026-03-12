# Production-Ready 3-Tier Infrastructure Deployment Using Terraform Modules

## Project Overview

This project demonstrates a **production-ready 3-tier architecture** deployed on AWS using Terraform modules.
The infrastructure is designed to be **modular, scalable, and secure**, eliminating manual provisioning and configuration drift.

The architecture includes:

* Web Tier (Public Subnet)
* Application Tier (Private Subnet)
* Database Tier (Private Subnet)

Infrastructure is automated using Terraform modules.

---

# Architecture Diagram

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
* Public subnets
* Private subnets
* Internet Gateway
* NAT Gateway
* Route tables

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

Clone the repository:

```
git clone https://github.com/Nikitapatil0304/3tier-terraform-project.git
```

Navigate to the project folder:

```
cd 3tier-terraform-project
```

Initialize Terraform:

terraform init

<img width="1366" height="768" alt="Screenshot (38)" src="https://github.com/user-attachments/assets/eaacad33-18b1-46fc-bf61-142873a17eab" />


Check execution plan:


terraform plan

<img width="1366" height="768" alt="Screenshot (41)" src="https://github.com/user-attachments/assets/3f5a9877-f0b1-4ae9-8ef6-a85b525dcfe9" />


Deploy infrastructure:

terraform apply

<img width="1366" height="768" alt="Screenshot (44)" src="https://github.com/user-attachments/assets/2cd072bc-e5c9-401d-b99e-6855c3fb994e" />

---

# Security Best Practices

This architecture follows security best practices:

* Web servers are placed in **public subnet**
* Application servers are placed in **private subnet**
* Database is deployed in **private subnet**
* RDS access restricted to application tier only
* Security groups control inter-tier communication
* Infrastructure managed using Infrastructure as Code

---

# Deployment Screenshots

### VPC

<img width="1366" height="768" alt="Screenshot (47)" src="https://github.com/user-attachments/assets/bcf19bfd-c8b8-470e-8294-c22a3ec807ed" />



### EC2 Instances

<img width="1366" height="725" alt="Ec2" src="https://github.com/user-attachments/assets/18c1be07-c660-4351-bc9d-d550e018a731" />


### RDS Database

<img width="1366" height="768" alt="Screenshot (49)" src="https://github.com/user-attachments/assets/9d585a58-bdf2-43e1-842b-5b6cdccc9739" />


### Web Application

![webpage](https://github.com/user-attachments/assets/38ef3f62-dcbd-43c8-b495-fd010ebd7fa2)


---

# Outcome

This project demonstrates how to deploy a **secure and scalable 3-tier architecture using Terraform modules**, enabling infrastructure automation and consistent cloud environments.
