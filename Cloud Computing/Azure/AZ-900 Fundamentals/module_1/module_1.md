# Azure Fundamentals Module 1

## Welcome and Exam Orientation

### What is AZ-900?
AZ-900 is the Microsoft Azure Fundamentals certification exam. It is designed to validate foundational knowledge of cloud concepts and Azure services. This is an entry-level certification suitable for individuals new to cloud computing.

### Who should take AZ-900?
- Non-technical professionals exploring Azure
- IT professionals starting their cloud journey
- Business stakeholders evaluating Azure services
- Students or beginners interested in cloud computing

### Exam Skills Measured (High-Level)
- **Describe Cloud Concepts:** Understand cloud principles, benefits, and models.
- **Describe Azure Architecture and Services:** Learn about core Azure services, solutions, and management tools.
- **Describe Azure Management and Governance:** Understand cost management, security, and compliance.

### Exam Format (Questions, Time, Passing Score)
- **Number of Questions:** 40–60
- **Time Limit:** 85 minutes
- **Passing Score:** 700 out of 1000
- **Question Types:** Multiple-choice, drag-and-drop, and case studies

### How to Study for the AZ-900
- **Microsoft Learn:** Use the free learning paths provided by Microsoft.
- **Hands-On Practice:** Explore Azure services using the free tier.
- **Mock Exams:** Test your knowledge with practice exams.
- **Review Key Concepts:** Focus on shared responsibility, cloud models, and Azure services.

### Session 1 Agenda
- Introduction to Cloud Computing
- Cloud Service Models
- Cloud Deployment Models
- Azure Global Infrastructure
- Azure Resource Organization

## Cloud Computing Fundamentals

### What is Cloud Computing?
Cloud computing is the delivery of computing services—such as servers, storage, databases, networking, software, and analytics—over the internet. It enables faster innovation, flexible resources, and economies of scale.

### Benefits of Cloud Computing
- **Cost Efficiency:** Pay only for what you use, reducing upfront costs.
- **Scalability:** Adjust resources dynamically to meet demand.
- **High Availability:** Resources are accessible when needed, supported by SLAs.
- **Global Reach:** Access resources from anywhere in the world.
- **Security:** Built-in security features and compliance with regulations.

### High Availability
High availability ensures that resources and services are accessible whenever needed. Azure provides SLAs to guarantee uptime and availability.

### Scalability vs Elasticity
- **Scalability:** The ability to increase or decrease resources to meet demand.
  - **Vertical Scaling:** Increasing or decreasing the capabilities of a resource (e.g., upgrading a VM).
  - **Horizontal Scaling:** Adding or removing resources (e.g., adding more VMs).
- **Elasticity:** The ability to automatically scale resources up or down based on demand.

### Reliability & Predictability
- **Reliability:** The ability of a system to recover from failures and continue functioning.
- **Predictability:**
  - **Performance Predictability:** Features like autoscaling and load balancing ensure consistent performance.
  - **Cost Predictability:** Tools like the Azure Pricing Calculator help manage costs.

### Security & Governance Benefits
- **Security:** Azure provides built-in security features, including protection against DDoS attacks.
- **Governance:** Azure enables organizations to enforce compliance with corporate and regulatory standards through policies and templates.

### Manageability in the Cloud
- **Management of the Cloud:** Automate scaling, deploy resources using templates, monitor health, and receive alerts.
- **Management in the Cloud:** Manage resources via the Azure Portal, CLI, APIs, or PowerShell.

### Capital Expenditure (CapEx)
CapEx refers to upfront investments in physical infrastructure, such as servers and data centers.

### Operational Expenditure (OpEx)
OpEx refers to ongoing costs for services and products. Cloud computing operates under an OpEx model, where you pay for what you use.

### Consumption-Based Model
The consumption-based model allows you to pay only for the resources you consume. This model helps optimize costs and scale resources as needed.

### Knowledge Check
- What are the key benefits of cloud computing?
- How does elasticity differ from scalability?
- What is the difference between CapEx and OpEx?

## Cloud Service Models

### Cloud Service Models Overview
Cloud service models define the level of control and responsibility between the cloud provider and the consumer. The three primary models are Infrastructure as a Service (IaaS), Platform as a Service (PaaS), and Software as a Service (SaaS).

### Infrastructure as a Service (IaaS)
- **Definition:** Provides virtualized computing resources over the internet.
- **Responsibilities:**
  - **Provider:** Manages hardware, networking, and physical security.
  - **Consumer:** Manages operating systems, applications, and data.
- **Use Cases:**
  - Lift-and-shift migrations
  - Testing and development environments
  - Hosting websites and applications

### Platform as a Service (PaaS)
- **Definition:** Provides a platform allowing consumers to develop, run, and manage applications without managing the underlying infrastructure.
- **Responsibilities:**
  - **Provider:** Manages infrastructure, operating systems, middleware, and development tools.
  - **Consumer:** Focuses on application development and data.
- **Use Cases:**
  - Application development and deployment
  - Business intelligence and analytics
  - Streamlining development workflows

### Software as a Service (SaaS)
- **Definition:** Delivers fully managed applications over the internet.
- **Responsibilities:**
  - **Provider:** Manages everything, including the application.
  - **Consumer:** Uses the application without worrying about maintenance.
- **Use Cases:**
  - Email and collaboration tools (e.g., Microsoft 365)
  - Customer relationship management (CRM) software
  - Finance and expense tracking applications

### Shared Responsibility Model
The shared responsibility model defines the division of responsibilities between the cloud provider and the consumer. Responsibilities vary depending on the service model:
- **IaaS:** Consumer has the most control.
- **PaaS:** Responsibilities are shared.
- **SaaS:** Provider has the most control.

### Service Model Comparison Table
| Feature                | IaaS            | PaaS            | SaaS            |
|------------------------|-----------------|-----------------|-----------------|
| Consumer Responsibility| Most            | Moderate        | Least           |
| Provider Responsibility| Least           | Moderate        | Most            |
| Use Cases              | Hosting, Testing| Development     | Productivity    |

### Exam Tip: Identifying Service Models
- **IaaS:** Think of renting virtual hardware.
- **PaaS:** Think of a platform for developers.
- **SaaS:** Think of ready-to-use applications.

### Knowledge Check
- What are the key differences between IaaS, PaaS, and SaaS?
- Who is responsible for managing the operating system in PaaS?
- Provide an example use case for each service model.

## Cloud Deployment Models

### Cloud Deployment Models Overview
Cloud deployment models define how cloud resources are deployed and managed. The three main models are Public Cloud, Private Cloud, and Hybrid Cloud.

### Public Cloud
- **Definition:** Cloud resources are owned and operated by a third-party provider and delivered over the internet.
- **Key Features:**
  - Shared infrastructure
  - Pay-as-you-go pricing
  - Accessible to multiple customers
- **Use Cases:**
  - Hosting websites and applications
  - Development and testing environments
  - Collaboration tools

### Private Cloud
- **Definition:** Cloud resources are used exclusively by a single organization, either hosted on-premises or by a third-party provider.
- **Key Features:**
  - Greater control over resources
  - Enhanced security and compliance
  - Higher costs compared to public cloud
- **Use Cases:**
  - Organizations with strict regulatory requirements
  - Sensitive data handling
  - Custom infrastructure needs

### Hybrid Cloud
- **Definition:** Combines public and private clouds, allowing data and applications to be shared between them.
- **Key Features:**
  - Flexibility to move workloads between environments
  - Cost optimization by using public cloud for non-sensitive workloads
  - Enhanced security for sensitive data in private cloud
- **Use Cases:**
  - Disaster recovery and backup
  - Temporary demand surges
  - Data sovereignty requirements

### Hybrid Cloud Use Cases
- **Disaster Recovery:** Use public cloud for backup and recovery while keeping critical systems in a private cloud.
- **Bursting:** Handle temporary spikes in demand by scaling into the public cloud.
- **Compliance:** Store sensitive data in a private cloud while leveraging public cloud for less sensitive workloads.

### Multicloud Overview
- **Definition:** Using multiple public cloud providers to meet specific business or technical requirements.
- **Key Features:**
  - Avoid vendor lock-in
  - Leverage best-of-breed services from different providers
  - Increased redundancy and reliability
- **Use Cases:**
  - Organizations with diverse workloads
  - High availability and disaster recovery across providers

### Azure Hybrid Capabilities
- **Azure Arc:** Manage resources across on-premises, multi-cloud, and edge environments.
- **Azure Stack:** Extend Azure services to on-premises environments.
- **ExpressRoute:** Establish private connections between on-premises infrastructure and Azure.

### Knowledge Check
- What are the differences between public, private, and hybrid clouds?
- When would you use a hybrid cloud over a public cloud?
- What is the purpose of Azure Arc in hybrid cloud environments?

## Azure Global Infrastructure

### What is Microsoft Azure

### Azure Global Infrastructure Overview

### Azure Regions

### Region Pairs

### Availability Zones

### When to Use Availability Zones

### Azure Data Centers (High-Level)

### Soverign & Specialized Clouds

### Azure Government Overivew

### Azure Global Services Summary

### Exam Tip: Regions vs Zones

### Knowledge Check

## Azure Resource Organization

### Azure Management Hierarchy Overview

### Azure Subscriptions

### Managment Groups

### Reosurce Groups

### Azure Resources

### Why Resource Groups Matter

### Naming & Organization Best Practices

### Azure Portal Walkthrough




