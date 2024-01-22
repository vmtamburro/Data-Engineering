## Describe the Core Architectural Components of Azure

* Regions
    * Geographical area on the planet that contains at least one, but potentially multiple datacenters that are nearby and networked together with a low-latency network.
* Region Pairs
    * Most azure regions are paired with another region within the same geography at least 300 miles away. Allows for replication of resources across a geography that helps reduce the likelihood of interruptions
* Sovereign Regions
    * Instances of Azure that are isolated from the main instance of azure. You may need to use a sovereign region for compliance or legal purposes
* Availability Zones
    * Physically separate data centers within an Azure Region. Made up with one or more datacenters equipped with independent power, cooling, and networking.
* Datacenters 
    * Facilities with resources arranged in racks with dedicated power, cooling and network infrastructure
* Resources
    * Basic building block of Azure. Anything you create, provision, deploy, etc is a resource. Virtual Machines (VMs), virtual networks, databases, cognitive services, are all considered resources within Azure
* Resource Groups
    * Groupings of resources. Resource groups can contain many resources. A single resource can only be in one resource group at a time. Resource groups can’t be nested.
* Management Groups
* Hierarchy
    * Resource Groups
        * Grouping of Resources
    * Subscriptions
        * Provides authenticated and authorized access to Azure products and services. An account can have multiple subscriptions, but is only required to have one. 
        * Two types of subscription boundaries
            * Billing Boundary - subscription type determines how Azure account is billed for using Azure
            * Access control boundary - Access-management policies at the subscription level. You can create separate subscriptions to reflect different organizational structures.
        * Creating additional Subscriptions
            * Create additional subscriptions for resource or billing management purposes to separate
                * Environments
                * Organizational structures
                * Billing
    * Management Groups
        * If you have many subscriptions, you might need a way to efficiently manage access, policies and compliance for those subscriptions.
        * Use containers called management groups and apply governance conditions to the management groups. All subscriptions within a management group automatically inherit the conditions applied to the management group, the same way that resource groups inherit settings from subscriptions and resources inherit from resource groups.
        * Management Groups can be nested
        * Examples of use
            * Create a hierarchy that applies a policy
            * Provide user access to multiple subscriptions


## Describe Azure Compute and Networking Services



* Compute Types
    * Container Instances
        * Virtualization environmet, like running multiple virtual machines on a snigle physical host. You can run multiple containers on a single physical or virtual host.
        * Unlike virtual machines, you don't manage the operating system for a container. 
        * Containers are designed to allow you to respond to changes on demand. Can quickly restart if there's a crash or hardware interruption.  
        * Docker (supported by Azure)
        * Fastest and simplest way to run a container in Azure.  Azure Container Instances allow you to upload your containers, and then the service will run the containers for you
        * Often used to create solutions by using a microservice architecture. Break solutions into smaller, independent pieces. You might split a website into a container hosting your front end, and another container hosting your abckend, and a third container for storage.
    * Virtual Machines
        * Create and use VMs in the cloud. Provide (IaaS)
        * When to use VMs
            * During Testing and Development
            * When running applications in the cloud
            * When extending your datacenter to the cloud
            * During disaster recovery.
        * Azure Virtual Desktop
            * Desktop and application virtualizatons service that runs ont hte cloud
            * Enables you to use a cloud-hosted version of Windows from any location.
    * Functions
        * Event-driven serverless compute option that doesn't require maintaining virtual machines or containers.  If you build an app using VMs or containers, thse resources have to be "running" to keep the app to function. With Azure Functions, an event wakes the function, alleviating the ned to keep resources provisioned when there are no events.
        * Ideal when you're only concerned about the cod running your service and not about the underlying platform or infrastructure. (REST)
        * Scale automaticall based on demand, so they may be a good choice when demand is variable.
        * Can be either stateless or statefull. When stateless, behave as if they're restarted every time they respond to event. Stateful - a context is passed through the function to track prior activity.
* Virtual Machine Options
    * Virtual Machines
        * Virtualized server. You can customize all software running on VM
        * Still need to configure, update, and maintain the software that runs on the VM
    * Virtual Machine Scale Sets
        * Create and manage a group of identical, load-balanced VMs
        * Azure automates scale sets to centrally manage, configure, and update a large number of VMs in minutes
        * Numer of VM instances can automatically increase or decrease in response to demand,or you can set it to scale based on a defined schedule.
        * VM sets also automatically deploy a load balancer to make sure that your resources are being used efficiently
    * Virtual Machine Availability Sets
        * Designed to ensure that VMs stagger updates and have varied power and network connectivity.
        * Prevents you from losing all of your VMs with a single network or power failure.
        * Two different types of grouping
            * Update Domain - VMs that can be rebooted at the same time. Allows you to apply these updates knowing that only one update domain grouping will be offline at a time.
            * Fault Domain - Groups VMs by common power source and network switch. By default an availability set will split VMs accross up to three fault domains.
    * Azure Virtual Desktop
* Resources Required for Virtual Machines
    * Size - purpose, number of processor cores, amount of RAM
    * Storage Disks - hard disk drives, solid state drives, etc
    * Netowkring - virtual network, public IP address, port configuration
* Application Hosting Options
    * Azure App Service
        * Build and host web apps, background jobs, mobile back-ends and RESTful APIS in programming languages of choice without managing infrastructure.
        * Robust hosting option that you can use to host apps in Azure. Lets you focus on maintaining your app while Azure keeps envirnment running.
        * Types of App Services
            * Web apps
                * App Service includes support for hosting apps by using .NET, .NET Core, Java, Ruby, Node.js, PHP, or Python. You can choose Windows or Linux as host operating system.
            * API apps
                * REST-based web API's. Full Swagger support and ability to package and publish API in Azure Marketplace. Produced appls can be consumed from any HTTP or HTTPS-based client
            * WebJobs
                * You can use the WebJobs feature to run a program or script in the smae contex as a web app, API app or Mobile App. Often used to run background tasks as part of application logic 
            * Mobile Apps
                * Feature of App Service to quickly build a back end for iOs and Android Apps
                    * Store mobile app data in a cloud-based SQL database
                    * Authenticate customers against common social providers such as MSA, Google, Twitter and Facebook
                    * Send push notfications
                    * Execute custom back-end logic in c# or Node.js
    * Containers
        * See above
    * Virtual Machines
        * See above
* Virtual Networking
    * Purpose of Azure Virtual Networks
        * Enable Azure Resources such as VMs, web apps, and databases to communicate with each other. Supports both public and private endpints to enable communication between external or internal resources with other internal resources
            * Public endpoints have a public IP address and can be accessed from anywhere in the wold
            * Private endpoints exist within a virtual netowrk and have a private IP address from within the address space of that virtual network.
        * Extension of on-prem network
        * Azure Virtual Netowkrs provide the following
            * Isolation and segmentation
                * Can create multiple isolated virtual networks. When you set a virtual network, you define a private IP address by using either public or private IP address ranges. IP range only exists with virtual network and isn't internet routable. You can divide that IP address into subnets and allocate part of the defined address space to each named subnet 
                * Can use Name Resolution built into azure or can configure Virtual Network to an internal or external DNS server
            * Internet communication
                * You can enable incoming connections from internet by assigning a public IP address tol an Azure Resource or putting the resource behind a public load balancer
            * Communicate between Azure resources
                * Virtual Neltworks can not only connect to VMS but other Azure Resources such as the App Service Environment for Powr Apps, Azure Kubernetes Service, and Azure Virtual Machine Scale Sets
                * Service endpoints can connect to other Azure resource types, such as Azure SQL databases and storage accounts. Approach enables you to link multiple Azure resources to virtual networks to improve security and provide optimal routing.
            * Communicate between on-premises resources
                * Point to site 
                * Site to site
                * Azure ExpressRoute - dedicated private connectivity to Azure that doesn't travel over internet. Usefull where you need greater bandwith and higher levels of security.
            * Route network traffic
                * Route tables allow you to define rules about how traffic should be directed. You can create custom route tables that control how packets are routed between subnets
                * Border Gateway Protocol (BGP) works with Azure VPN Gatways, Azure Route or Azure xpressRoute to propogate on premises BGP routes to Azure Virtual Networks
            * Filter network traffic
                * Allows you to filter traffic between subnets
                    * Network security groups that contain multiple inbound and outbound security rules
                    * Network virtual appliances are specialized VMs that can be compared to a hardened network appliance. A ewtowrk appliance carries out a particular etwork functon such as running a firewall or performing wide area network (WAN) optimization.
            * Connect virtual network
                * You can link virtual networks together by usig virutal network peering. Allows two virtual networks to connect directly to each other. Network traffic between peered networks is private and travels on Bicrsoft backbone network, never entering the public internet. 
                * User Defined Routes (UDR) allow you to control the routing tables between subnets within a virtual network or between virtual networks. Allows for greater control over network traffic flow.
    * Azure Virtual Subnets
        * See above
    * Peering
        * See above
    * Azure DNS
        * See above
    * VPN Gateway
        * Type of virtual network gateway. Instances are deployed in a dedicated subnet of the virtual network and enable the following connectivity
            * Connect on-premises datacenters to virtual networks through site-to-site connection
            * Connect individual devices to virtual networks through a point-to-site connection
            * Connect virutal networks to other virtual networks through a network-to-network connection.
    * Express Route
        * See above
* Define Public and Private Endpoints
    * See above


## Describe Azure Storage Services

* Compare Azure Storage Services
    * Storage account provides a unique namespace for Azure Storage Data thats accessible via HTTP or HTTPs
    * Benefits
        * Durable
        * Highly available
        * Secure
        * Scalable
        * Managed
        * accessible
* Describe storage tiers
* Describe redundancy options
    * Redundancy in Primary Regon
        * Locally redundant storage (LRS) 
            * Replicates data three times within a single data center or primary region. 11 nines of durability. Lowest-cost redundancy option, and least durability. Protects against server rack and drive failures
        * Zone-redundant storage (ZRS)
            * Replicates data synchronously across AZ availabilikty zones in the primary region 12 nines of durability
            * data is still accessbile for read/write if a zone becomes unavailable. 
    * Redundancy in a Secondary Region
        * Geo-redundant storage (GRS)
            * Copies data asynchronously to a single physical locaton in the secondary region (regon pair) using LRS. 16 nines of durability
        * Geo-zone-redundant storage (GZRS)
            * Copied across three AZ availibility zones in the primary region, and also replicated to a secondary geographic region
    * Read access to data in the secondary region
        * Replicates data to another physical location to protect against regional outages, however the data is available to be read only if the customer or Microsoft initiates a failover from the primary to secondary region.
        * Read-access geo-redundant storage (RA-GRS)
        * Read-access geo-zone redundant storage (RA-GZRS)
* Describe storage account optons and storage types
    * Azure Blobs
        * Scalable object store for text and binary data. Includes support for big data analytics. No restrictions on kinds of data it can hold. Aren't restricted to common file formats. 
        * Ideal for images or documents, storing files, streaming video and audio, storing data for backup and restore, DR, and archiving, storing data for analysis by an on prem Azure-hosted service.
        * Tiers for Blob Storage
            * Hot Access
            * Cool access
            * Archive Access
    * Azure Files
        * Managed file shares for cloud or on-premises deployments. Accessible via Server Message Block (SMB) or Network File System (NFS) protocols for Windows, Linux and macOS clients
        * Benefits:
            * Shared Access
            * Fully managed
            * Scripting and Tooling
            * Resiliency
            * Familiar programmability
    * Azure Queues
        * Messaging store for reliable messaging between application components. Can be combined with Azure Functions to take action when a message is received. For example, if you want to perform an action after a customer uploads a form on a website. Trigger a message to Queue storage, then use Azure Fucntions to trigger an action once the message was received.
    * Azure Disks
        * Block-level storage volumes for Azure VMs
        * Conceptually, same as physical disk but they're virtualized, giving greater resiliency and availability.
* Identify options for moving files, including Azure Migrate and Azure Data Box
    * Azure Migrate - service that helps migrate from on-prem to the cloud.
        * Discovery and Assesment
        * Server migration
        * Data Migration Assistant
        * Azure DB Migration Service
        * Web App Migration Assistant
        * Azure Data Box - physical migration service.
    * AzCoppy - command-line utility that can cpy blobs or files from your storage account. YHou can upload, download, copy between storage account, and synchronize files
    * Azure Storage Explorer - standalone app that provides a GUI to manage files and blobs.
    * Azure File Sync - centralize file shares keep the flexibility, performance, and compatibility of a wndows file server.


## Describe Azure Identity, Access and Security

* Describe directory services in Azure
    * Azure AD
        * Directory service that allows you to sign in and access both Microsoft cloud applications and cloud applications that you develop. Also can help mantain on-premises AD deployment
        * You can connect Azure AD with on-prem AD using Azure AD connect.
        * Used for
            * IT administrators
            * App Develpers
            * Users
            * Online Service Subscribers
        * Provides
            * Authentication
            * SSO
            * Application Management
            * Device Management
    * Azure AD DS
        * (Domain Service) Provides managed domain services such as domain join, group policy, lightwight access protocol (LDAP) and Kerberos/NTLM authenitcation.
        * Lets you run legacy apps in the cloud that can't use modern auth methods, or where you don't want directory lookups to always go back to an on-premises environment into a managed domain without needing to manage the AD DS environment in the cloud
        * Managed domain is configured to perform a one-way sync from Azure AD to Azure AD DS. 
* Describe Authentication methods in Azure - establishing the identity of a person, service, or device.
    * SSO
        * Single Sign On enables users to sign in one time and use that cred to access multiple resources and applications frm different providers.
        * Only need to remember one ID and password.
    * MFA
        * Multi Factor Auth - helps protect against a password
        * Three categories
            * Something a user knows
            * Something the user has
            * Something the user is
        * Azure AD Multi-Factor Authentication - allows users to choose an additional form of auth during sign in
        * Other options by Global Azure and Azure Government
            * Window Hello for Business - ideal for information workers that have their own designated windows pc. With public key infrastructure (PKI) and built in SSO
            * Microsoft Authenticator App - Passwordless Credential
            * FIDO2 Security Keys - (Fast IDentity Online) Promotes open auth standards to reduce the use of passwords as a form of authentication
    * Passwordless
* Azure External Entities
    * Ways you can securely interact with users outside of organization
        * Business to Business collaboration (B2B)
        * Business to Business Diredct Connect 
        * Azure AD Business to Customer (B2C)
* Azure AD Conditonal Access
    * Conditional Access is a tool that Azure AD uses to allow or deny access to resources based on identity signals
    * More Granular multifaactor auth experience for usres
    * Signal, Decision, Enforcement
* Azure Role Based Access Control (RBAC)
    * Principle of least privilege says you should only grant access up to the level needed to complete a task. 
    * Azure provides built-in roles that describe common access rules for cloud resources
    * Role-based access is applied to a scope which is a resource or set of resources that this access applies to
        * A management group
        * Single subscripton
        * Resource Group
        * Sngle Resource
    * RBAC is hierarchical. When you grat access at a parent scope, those permissions are inherited by all child scopes.
    * RBAC is enforced on any action initiated against Azure Resource that passes through Azure Resource Manager
* Zero Trust
    * Security model that assumes the worst case scenario and protects resources with that expectation. Assumes breach at the outset, and verifies each request as through it originated from an uncontrolled network.
        * Verify Explicitly
        * Use least privilege access
        * Assume breach
* Defense In Depth Model
    * Objective is to protect information and prevent it from being stolen by those who aren't authorized to access it
    * Layers provide protection so that if one layer is breached, the subsequent layer is already in place to prevent further exposure.
        * Physical Security
        * Identity and Access
        * Perimiter
        * Network
        * Compute
        * Application
        * Data
* Microsoft Defender for Cloud
    * Security posture management and threat protection. Monitors cloud, on-premesis, hybrid, and multicloud environments to provide guidance and notifications aimed at strengthening security prosture.
    * Azure-native protectons
        * Azure PaaS
        * Azure data services
        * Networks
    * Can defend hybrid resources
    * Can defend resources on other clouds
    * Three Vital Needs
        * Contnually Assess
        * Secure
        * Defend
    * Security Alerts
    * Advanced threat protection