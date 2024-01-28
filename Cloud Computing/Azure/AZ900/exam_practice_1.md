## Exam Practice 1

1. A company wants to host a mission-critical application on a set of Virtual Machines within Microsoft Azure. They want to ensure they can set up the infrastructure in Azure to guarantee the max possible uptime for the application. Which of the following can be used to fulfill this requirement?
* Azure Site Recovery
    * Disaster recovery solution that replicates virtual machines to a secondary site in a different region. In the event of a region-wide outage, the application can failover to the secondary site and continue running, thus providing high availability.
* Availability Zones
    * Availability Zones are unique physical locations within an Azure Region, each containing one or more data centers equipped with independent power, cooling, and networking. This helps to ensure that apps running across different zones are highly available with reduced risk of data center outage.
* Availability Sets
    * Availability Sets are used to ensure that virtual machines are deployed across multiple physical servers, racks, storage units, and network switches within a data center.


2. A company is planning on deploying a web server and database server on Azure. You have to ensure that traffic restrictions are in place so that the database server can only communicate with the web server. What would you recommend for implementing these restrictions?

* Network Security Groups (NSGs)
    * Can be used to filter inbound and outbound network traffic to and from Azure Resources, including virtual machines. By creating an NSG and associating it with both the web server and the database server, you can configure the NSG rules to allow traffic only between the two servers, ensuring that any other traffic to the database server is blocked.



3. What is the network component used to establish a site-to-site VPN connection between an on-premises network and Azure Account
    * Local Network Gateway
        * Represents the hardware or software VPN device in your local network. Use this with a connection to set up a site-to-site VPN connection between an Azure Virtual Network and your local network.


4. What does Azure Sentinel use playbooks for?
    * To help automate and orchestrate your threat response
        * Azure Sentinel uses playbooks for automating responses to detected security threats and incidents. A playbook is a collection of these remediation actions that can be run from Azure Sentinel as a routine. A playbook can help automate and orchestrate  your threat response; it can be run manually or set to run automatically in response to specific alerts or incidents, when triggered by an analytics rule or automation rule, respectively.

5. How many virtual machines should be deployed in an Availability set to guarantee that there is Virtual Machine connectivity to at least one instance for at least 99.95% of the time?
    * Two or more instances. Availability sets ensure that  your VMs are physically separated across multiple hardware servers within an Azure datacenter.

6. You are managing the network infrastructure for a company that has two Azure virtual networks. Both ar in separate Azure Regions. The company wants to establish connectivity between the two virtual networks to enable communication and resource sharing. Which Azure Virtual Networking feature should you use to establish connectivity between vnet1 and vnet 2?
    * Virtual Network Peering
        * Enables connectivity between virtual networks deployed in the same AAzure Region or across different regions. 


7. A company with developers primarily working on MacOS and Linux-based machines is considering adopting Microsoft Azure cloud infrastructure. Which of the following Azure management tools are supported for Mac & Linux developers to manage cloud resources?
    * Azure CLI, Azure Powershell, and Azure Portal.

8. Which of the following services are examples of Azure PaaS solutions?
    * Azure App Service
    * Azure SQL Database

9. Azure Backup is an example of a Software as a Service
    * PaaS - Azure Backup provides independent and isolated backups to guard against accidental destruction of original data. Backups are stored in a Recovery Services vault with built-in management of recovery points. Configuration and scalability are simple, backups are optimized, and you can easily restore as needed.

10. A large company has several departments, all working with resources on Microsoft Azure. There is a requirement that all billing for cloud resources in their account should be grouped per department for budgetary reasons.
    * Azure Tags. You can apply tags to Azure resources, resource groups, and subscriptions to logically organize them into a taxonomy.

11. A company has just set up a Azure subscription and Azure Tenant. They want to implement strict policies for the security of Azure resources. They want to enforce the following requirements "Allow the Virtual Machine Administrator team to only deploy virtual machines of a certain size. Which could be used to fulfill the requirement?
    * Azure Role-Based Access Control
        * Access management for cloud resources is a critical function for any organization that is using the cloud.

12. What is the longest term (years) for a Reserved VM instance?
    * 3 years. When you make a reservation purchase, you pay for what is 100% possible resource over a 1-3 year term. 

13. Which Azure Service provides network traffic filtering across multiple Azure subscriptions and virtual networks?
    * Azure Firewall - can centrally create, enforce, and logs application and network connectivity policies across subscriptions and virtual network.
    * Not NSG. NSG filters networks within subscriptions (not across subscriptions.)

14. You are planning to deploy an application on Azure that requires running containerized workloads without managing any underlying infrastructure. Which Azure Service should you use to meet this requirement?
    * Azure Container Instances - lets you run containers on-demand without having to manage any underlying infrastructure, as opposed to Azure Kubernetes Service, which involves managing underlying infrastructure. 

15. Which of the following is a software as a service (SaaS)?
    * Micrsoft Intune

16. You have an Azure environment that contains multiple Azure virtual machines. You plan to implement a solution that allows the client computers on your on-premises network to connect with Azure virtual machines. Which two resources should be included in recommendation?
    * Gateway Subnet 
        * dedicated subnet
    * Virtual Network Gateway
        * Virtual network gateway is the Azure VPN device. Virtual network gateway needs to be located in a dedicated subnet in the Azure virtual network