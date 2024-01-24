## Intro to Azure
* Azure is a computing platform
* Simple web services for hosting business presence in the cloud
* Azure Fundamentals
    * Compute
    * Networking
    * Storage Services
* AZ900 Domain
    * Describe Cloud Concepts
    * Azure Architecture and Services
    * Azure Management and Governance

## Intro to Cloud Computing
* Cloud Computing
    * Delivery of computing services over the internet
    * Expansion of traditional IT offerings like IoT, ML and AI
    * Doesn't need to be constrained by a physical architecture
* Shared Responsibility Model
    * Responsibilities get shared between the cloud provider and the consumer
    * Physical security, power, cooling, and network connectivity
    * Consumer is responsible for the data and info stored n the cloud, and access security
    * Infrastructure as a Service (IaaS)
    * Platform as a Service (PaaS)
    * Software as a Service (SaaS)
    * You'll always be responsible for
        * Info and data stored in the cloud
        * Devices allowed to connect to your cloud
        * Accounts and identities of the people, services, and devices within your organization
    * The cloud provider is always responsible for
        * The physical data center
        * The physical Network
        * The physical Hosts
    * Your service model will determine the responsibility for things like
        * Operating systems
        * Network Controls
        * Applications
        * Identity and Infrastructure
* Cloud Models - define the deployment type of cloud resources. Three main cloud models are: private, public, and hybrid. Appropriate use cases for each cloud model:
    * Public
        * built controlled and maintained by third party provider. 
        * Anyone that wants to purchase cloud services can access and use resources. 
        * General public availability is the key difference between public and private clouds. 
    * Private
        * Private cloud is, in some ways, the natural evolution from a corporate datacenter.  
        * Cloud that's used by a single entity.  
        * Greater control but greater cost. 
        * Can be hosted from on site datacenter, or a dedicated datacenter offsite.
    * Hybrid
        * Computing environment that uses both public and private clouds in an interconnected environment. 
        * Hybrid cloud can be used to allow private cloud to surge for increased, temporary demand by deploying cloud resources. 
        * Can be used to provide an extra layer of security.
    * Multi-Cloud - use multiple public cloud providers. 
    * Azure Arc - set of technologies that helps manage cloud environment. 
* Consumption-based model
    * Capital Expenditure (CapEx)
        * One time up-front expenditure to purchase or secure tangible resources
    * Operational Expenditure (OpEx)
        * Spending money on services or products over time.
        * Cloud computing is OpEx because it operate under a consumption-based model. 
* Compare cloud pricing models
    * pay-as-you-go pricing model
    * Only pay for the cloud services you use
    * Plan and manage operating costs
    * run infrastructure more efficiently
    * Scale as your business needs change


## Benefits of using Cloud Services
* High Availability
    * Resources are available when needing
    * SLA (Service Level Agreements) guarantees service availability
* Scalability
    * Ability to adjust resources to meet demand.
    * Aren't over paying for services. Only pay for what you use
    * Vertical Scaling
        * Increasing or Decreasing the capabilities of resources
    * Horizontal Scaling
        * Adding or Subtracting number of resources
* Reliability
    * Ability of a system to recover from failures and continue to function
    * One of the pillars of the Microsoft Azure Well-Architected Framework
    * Decentralized Design. Cloud enables you to have resources deployed in regions around the world.
* Predictability
    * Performance predictability
        * Autoscaling
        * Load Balancing
        * High availability
    * Cost predictability
        * Total Cost of Ownership
        * Pricing Calculator
        * Track your resource use in real time
* Security and Governance
    * Set templates that ensure resources meet corporate standards and government regulatory requirements
    * Cloud providers are well suited to handle DDoS attacks
* Manageability
    * Management of the cloud
        * Automatically scale
        * Deploy resources based on preconfigured template
        * Monitor Health
        * Receive Automatic Alerts
    * Management in the cloud
        * Through a web portal
        * Using CLI
        * Using APIs
        * Using Powershell

## Cloud Service Types

* IaaS
    * Most flexible category of cloud services
    * Cloud provider is responsible for maintaining the hardware, network connectivity, and physical security
    * You are responsible or everything else
    * Essentially renting the hardware in a cloud datacenter
    * Scenarios
        * Lift and shift migration
        * Testing and Deployment
* PaaS
    * Middle ground between renting space in a data center and paying for the complete and deployed solution
    * Cloud maintains the physical infrastructure, physical security, and connection to the internet as well as operating systems, middleware, development tools, business intelligence services.
    * Scenarios
        * Development Framework
        * Analytics or Business Intelligence
* SaaS
    * Complete cloud service from a product perspective.
    * Renting a fully developed application
    * Easiest to get up and running
    * Requires the least amount of knowledge and expertise.
    * Scenarios
        * Email and messaging
        * Business productivity and applications
        * Finance and expense tracking

