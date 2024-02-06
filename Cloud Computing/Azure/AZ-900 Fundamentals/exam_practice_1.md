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
    * Microsoft Intune

16. You have an Azure environment that contains multiple Azure virtual machines. You plan to implement a solution that allows the client computers on your on-premises network to connect with Azure virtual machines. Which two resources should be included in recommendation?
    * Gateway Subnet 
        * dedicated subnet
    * Virtual Network Gateway
        * Virtual network gateway is the Azure VPN device. Virtual network gateway needs to be located in a dedicated subnet in the Azure virtual network

17. What Azure service should a company use to ensure secure and fast connectivity between on-prem systems an azure services?
    * Azure ExpressRoute - provides fast, secure connection between on prem systems and azure services.


18. A company is planning on hosting an application across multiple Virtual Machines on Azure. They want to ensure that the application survives a region-wide failure within Azure so that there is no loss of service. Which concept needs to be considered to fulfill this requirement?
    * Fault Tolerance - ability of a system to continue functioning in the event of a failure. This can be achieved by deploying resources across multiple regions, so if a region goes down, the application can continue to run in another region without any loss of service.

19. A developer with an application running in a virtual machine environment is planning a migration to Microsoft Azure hosting. Which Azure service will provide them with a platform to host their application?
    * Azure App Service- PaaS that allows devs to easily build, deploy, and scale web applications and APIs. it supports multiple languages and frameworks, including .NET, Java, Node.jjs, PHP and Python. Provides various deployment options, such as Docker and Git.

20. A developer is planning to create a WordPress-based website hosted on Microsoft Azure. Which Azure service could they use to quickly launch a pre-configured virtual machine environment for WordPress?
    * Azure Marketplace - online store that offers various applications and services designed for use in Azure. Includes pre-configured virtual machine images optimized for different applications, including WordPress, by using Azure Marketplace, a developer can quickly launch a virtual machine that is already set up for WordPress, reducing the time and complexity involved in manual configuration.

21. Considering a company's need for regional compliance and data residency, what approach should they adopt for their Azure Deployment?
    * Multi-region deployment with geo-redundancy
        * Ensures data residency and compliance across different regions while providing high availability and disaster recovery capabilities.

22. For network isolation of sensitive operational data, which Azure feature should a company implement?
    * Azure Virtual Network
        * Provides a secure and isolated network environment, enabling users to create private networks within Azure, essential for maintaining the integrity and security of sensitive operational data
23. A company is planning on using the Azure Firewall service. Would the Azure firewall service encrypt all network traffic sent from Azure to the internet?
    * No - Azure VPN Gateway would. Azure firewall centrally manages and controls inbound and outbound traffic for virtual networks in Azure.
24. A company has just set up an azure subscription and an Azure tenant. They want to implement strict policies when it comes to the security of Azure resources. They want to implement the following requirement: "Ensure that the virtual machine contributor team can only deploy virtual machines and their dependent resources"
    * Azure RBAC - helps manage who has access to what Azure resources.
25. You are deploying a large number of Azure virtual machines and your goal is to ensure the availability of virtual machine services even in the event of a data center failure. You decide to deploy the virtual machines to two or more availability zones. Does this meet the goal?
    * Yes - Availability zones are physically separate data centers within an Azure region.
26. Availability zones are used to replicate data and application to multiple regions.
    * False - AZ replicate data and applications within a single region.
27. Which are true regarding Azure Subscriptions
    * A company can use resources from multiple subscriptions
    * A single microsoft account can be used to manage multiple Azure subscriptions.
28. Which security feature would aid in determining current identity practices and providing helpful recommendations for improvements?
    * Azure AD Security Score. 
        * Percentage that functions as an indicator of how aligned you are with Microsoft's best practice recommendations for security.
        * Objectively measures security posture.
        * Helps plan identity security improvements
        * Helps review the success of improvements.
29. A company has an Azure web app. They need to manage the settings of the web app from an iPhone. What two Azure management tools can they use?
    * the Azure Portal
    * Azure Cloud Shell (accessible from a web browser or mobile app)
30. Which cloud model can be used to connect to an on-premises server?
    * Private, hybrid and public.
31. A company has decided to migrate its email services to a Software as a Service Solution. They are considering Microsoft Office 365 as their SaaS provider. They want to understand the shared responsibility model for security and data protection in a SaaS environment. Which of the following statements accurately describes the shared responsibility for security and data protection in a SaaS model?
    * The SaaS provider is responsible for securing the infrastructure, while the customer is responsible for securing their data.
32. A company is planning to store a large amount of data in Azure Blob Storage and they have specific requirements regarding data access, frequency, and performance. They want to ensure that frequently accessed data is readily available with low latency, while infrequently accessed data can be stored at a lower cost. Which Azure Blob storage option should they choose to meet these requirements?
    * Hot Storage - offers different tiers to cater to varying data access patterns and cost requirements. Hot storage is optimized for frequently accessed data that requires low latency and quick access. It is suitable for scenarios where data needs to be readily available for immediate retrieval and processing.
33. Which of the following statements is true?
    * Azure functions is PaaS
    * Microsoft Intune is SaaS
    * Azure Disk Storage is IaaS
    * Azure Virtual Machine is not PaaS
35. You are considering adopting Azure Cloud services for your organization's critical workloads. As part of your evaluation you want to understand the benefits and assurances provided by Azure's service-level agreement (SLA). Which of the following options correctly defines what an SLA in Azure encompasses?
    * The performance standards tha Microsoft commits for you, the customer. An Azure SLA outlines the performance commitments and guarantees provided by Microsoft for its Azure services. It defines the level of availability, uptime, reliability, and response times that customers can expect from Azure Services.

36. Azure Monitor can monitor the performance of on-premises computers. Is this statement true?
    No - Azure Monitor maximizes the availability and performance of your applications 
    
37. A large company has approximately 200 machines in its on-premises environment. They are planning to expand their infrastructure without having to spend a lot of money or time. Which of the following actions may they take to meet this requirement?

- Have a hybrid architecture. 

38. True or false, Microsoft Defender for Cloud can be used to collect VM firewall logs.
 
 - False. Microsoft defender for cloud is a cloud-native security solution powered by Microsoft. Focuses on protecting cloud resources. Des not specifically collect VM firewall logs. For this you would want to use Azure Monitor.

 39.  An org is considering implementing password-less authentication options for their Azure AD environment. They are exploring the available options provided by Microsoft Azure and Azure Government. Which of the following pwdless auth options are available and integrated with Azure AD?
    - Microsoft Authenticator
    - FIDO2 Security Keys
    - Windows Hello for Business

40. Which of the following statements regarding an Azure storage account is true?
    - Data that is stored in an Azure storage account automatically has at least three copies.


41. what advantages does high availability bring to cloud computing?
    - Enables organizations to easily scale their resources based on their needs
    - Allows for redundancy of resources, ensuring that if one resource fails, another can take its place without interruption
    - Enables load balancing across multiple resources, preventing overloading of any single resource.

42. You have a VM and want to encrypt its disks. What is the first step?
    - Create an Azure Key Vault

43. Wht are the different tiers of Azure web
    - Standard - small-scale apps with no SSL support or custom domain support
    - Basic - SSL support and up to 10 GB of storage. Does not include auto-scaling or deployment slots
    - Standard - provides features such as auto-scaling, deployment slots, and custom domain support. Includes SSL support and up to 50 GB of storage
    - Free tier provides limited functionality and is not suitable for a web app that is publicly accessible.

44. A developer recently signed up for a Free tier Azure account, which Azure subscription is automatically included with their account?
    - Basic - basic support plan includes unlimited support requests relating to billing and subscription management, and gives you access to the Azure Advisor service which provides free guidance on Azure best practices. It's available to all Azure customers at no cost.

45. What can Cost Management be applied to?
    - Cost Management can be applied to management groups. 

46. You are the administrator of an Azure subscription for a company that provides software services to its customers. As part of your role, you need to monitor and manage the costs associated with the Azure resources used by the company. You want to identify the most appropriate tool to help you track and optimize costs effectively. Which tool in Azure should you use to monitor and optimize costs associated with Azure Resources?
    - Azure Cost Management and Billing.

47. Which service provides the ability to manage access and policies across multiple subscriptions?
    - Azure Management Groups.

48. Which of the following statements is true about a Platform as a Service solution that hosts web apps in Azure?
    - Additional memory can be added to the solution by changing the pricing tier?

49. A company wants to securely move large amounts of data to Azure by shipping the drives using Azure Import/Export Service. What two things does the company need to do to prepare their drives for an import job?
     - A Driveset CSV file (list of disks to which the drive letters are mapped so the tool can correctly pick the list of disks to be prepared)
     - A Dataset CSV file (list of directories/files to be copied to target drives)

50. Your company plans to deploy several custom applications to Azure. The applications will provide invoicing services to the customers of the company. Each application will have several prerequisite applications and services installed. You need to recommend a cloud deployment solution for all the applications. What should you recommend?
     - Infrastructure as a service.


51. A team of developers at a software development company plans to deploy, and then remove, 50 customized virtual machines each week. 30 of the virtual machines run Windows Server 2016 and 20 of the virtual machines run Ubuntu Linux.An Azure service is required to minimize the administrative effort required to deploy and remove the virtual machines. What Azure service best fits the requirement?
     - Azure DevTest Labs
        - Quickly provision environments
        - Easily integrate deployment pipeline with DevTest Labs to provision on-demand environments
        - Scale up your load testing by provisioning multiple test agents and create pre-provisioned environments for training and demos.
    
52. A company needs the ability to detect and diagnose abnormalities in web applications. Which of the following services would be suitable for this requirement?
    - Azure App Insights.

53. Which of the following best describes the feature provided by Azure Site Recovery
    - Disaster recovery for Virtual Machines.

54. Is all data that is copied onto an Azure Storage Account backed up automatically to another Azure Data Center?
    - No. LRS - maintains 3 copies of the data. GRS has cross-regional replication.

55. You have a virtual machine named VM1 that runs Windows 2016 in the East US Azure Region. Which Azure Service should you use from the Azure Portal to view Service Failure Notifications that can affect the availability of VM1
     - Azure Virtual Machines - there is a named Maintenance Status.

56. Which of the following statements is true about PaaS solution that hosts web apps in Azure?
     - Provides no control over the operating systems that host applications.