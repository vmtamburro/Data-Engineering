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
                * YHou can enable incoming connections from internet
            * Communicate between Azure resources
            * Communicate between on-premises resources
            * Route network traffic
            * Filter network traffic
            * Connect virtual network
    * Azure Virtual Subnets
    * Peering
    * Azure DNS
    * VPN Gateway
    * Express Route
* Define Public and Private Endpoints


## Describe Azure Management and Governance
