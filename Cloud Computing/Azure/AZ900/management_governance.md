## Cost Management in Azure
* Describe factors that can affect costs in Azure
    * Resource Type
        * Type of resource
        * Settings for Resource
        * Azure Region
        * Metered instances track the resources' usage and generate a usage record that is used to calculate bill.
    * Consumption
        * Pay-as-you-go 
        * Ability to commit to using a set amount in advance to receive discounts on reserved resources
    * Maintenance
        * Rapidly adjust resources based on demand
        * Using resource groups can help keep all of your resources organized.
        * Maintain your cloud environment. Every time you provision a VM, storage and networking are also provisioned. If your deprovision the VM, you may not deprovision the storage and networking intentionally or unintentionally.
        * Make sure you're not keeping around resources that are no longer needed
    * Geography
        * Cost of power, labor, taxes, and fees vary depending on the location
        * Network traffic is also impacted based on geography
    * Network Traffic
        * Some inbound transfers are free.
        * Outbound transfers pricing is based on zones.
        * Bandwidth pricing page.
    * Subscription Type
        * Usage allowances, which affect costs
        * Azure free trial subscription provides access to a number of products that are free for 12 months
    * Azure Marketplace
        * Lets you purchase Azure-based solutions from third-party vendors.
        * You may pay for not only the Azure services, ut also the services or expertise of the third party vendor.
* Compare the pricing calculator and the TCO Calculator
    * Pricing Calculator
        * Gives an estimated cost for provisioning resources in Azure.
        * Estimate cost of any provisioned resources including compute storage and associated network costs.
    * TCO Calculator
        * Helps compare the costs for running an on-premises infrastructure compared to an Azure Cloud infrastructure.
* Describe Azure Cost Migration Tool
    * Ability to quickly check Azure resource costs, create alerts on resource spend, and create budgets that can be used to automate management of resources.
    * Cost Alerts
        * Budget Alerts
            * Notify when you're spending based on usage or cost that reaches or exceeds the amount defined in the alert condition
        * Credit Alerts
            * Alerts you when Azure credit monetary commitments are consumed.
            * Monetary commitments are for organizations with Enterprise Agreements (EA)
        * Department spending quota alerts
            * Notify you when department spending reaches a threshold of the quota.
            * Spending quotas are configured in the EA portal
* Describe the purpose of tags
    * Provide information or metadata about resource
    * Useful for
        * Resource management
        * Cost management and optimization
        * Operations management
        * Security
        * Governance and regulatory compliance
        * Workload optimization and automation.


## Features and Tools in Azure for Governance and compliance

* Azure Blueprints
    * Standardize cloud subscription or environment deployments rather than having to configure features like Azure Policy for each new subscription
    * Define repeatable settings and policies that are applied as new subscriptions are created
    * Each component in the blueprint definition is known as an artifact
    * Artifacts can also contain one or more parameters that you can configure
        * Role Assignments
        * Policy Assignments
        * Azure Resource Manager templates
        * Resource Groups
* Azure Policy
    * Create, assign, and manage policies that control or audit your resources
    * Policies enforce different rules across resource configurations so that those configurations stay compliant with corporate standards
    * Allows you to define
        * Individual Policies
        * Groups of related policies (initiatives)
    * Can prevent noncompliant resources from being created
    * Initiatives - way of grouping related policies together
        * Example: Enable Monitoring - monitor available security recommendations. Policy definitions include
            * Monitory unencrypted SQL database
            * Monitor OS Vulnerabilities
            * Monitor missing Endpoint Protection
* Resource Locks
    * Prevents resources from being accidentally deleted or changed
    * Applied to individual resources, resource groups, or even an entire subscription.
    * Resource locks are inherited.
    * Two types of resource locks
        * Delete
        * ReadOnly
* Service Trust Portal
    * Portal that provides access to various content, tools, and other resources about Microsoft security, privacy, and compliance practices
    * Contains details about Microsoft's implementation of controls and processes that protect our cloud services and customer data therein.

## Features and Tools for Managing and Deploying Azure Resources

* Describe Azure Portal
    * Web Based Unified Console that provides an alternative to command-line tools. You can manage your Azure subscription with a GUI interface
        * build, manage, and monitor siple web apps to complex cloud deployments
        * create custom dashboards for an organized view of resources
        * configure accessibility options for an optimal experience
* Describe Azure Cloud Shell - browser-based shell tool
     * Azure CLI - equivalent to Azure Powershell, with the primary difference being the syntax of commands. CLI uses Bash commands. 
     * Provides the same benefits of handling discrete tasks or orchestrating complex options through code.
     * Azure Powershell - shell to run commands called command-lets. Call to the Azure REST API to perform management tasks in Azure.
* Azure Arc
    * Hybrid and multi-cloud environments can get complicated. Azure provides a host of tools to provision, configure, and monitor Azure resources. 
    * Lets you extend compliance and monitoring to hybrid and multi cloud platform
* Azure Resource Manager (ARM)
    * Deployment and management service for Azure. Provides a management layer that enables you to create, update, and delete resources in azure account. 
    * When a user sends a request from Azure tools, ARM receives the request, authenticates, and authorizes the request. ARM then sends the request to the Azure Service
        * Infrastructure management through declarative templates
        * Deploy, manage, and monitor resources
        * Re-deploy solution throughout development life-cycle
        * Define dependencies between resources
        * Apply access control to all services
        * Apply tags to resources to logically organize all the resources ins subscription
        * Clarify organization's billing
* ARM Templates
     * Infrastructure as code - manage infrastructure as lines of code.
     * Describe the resources you want to use in declarative JSON format
    * Benefits include
        * Declarative syntax
        * Repeatable results
        * Orchestration
        * Modular files
        * Extensibility

## Describe Monitoring Tools in Azure

* Azure Advisor
    * Evaluates resources and makes recommendations to help improve reliability, security, and performance.
    * Designed to help save time on cloud optimization.
    * Recommendations are divided into five categories
        * Reliability
        * Performance
        * Operational Excellence
        * Cost
* Azure Service Health
    * Provides a global cloud solution to help manage infrastructure needs
    * Helps keep track of Azure Resource.
    * Combines three different Azure services
        * Azure Status
            * Broad picture of status of azure globally
            * Informs you of service outages in Azure on the Azure Status Page.
            * Good reference for incidents with widespread impact.
        * Service Health
            * Provides narrower view of azure services and regions.
            * Focuses on the azure services and regions you're using.
            * Best place to look for service impacting communications about outages.
            * Can even set up Service Health alerts to notify you when service issues, planned maintenance, or other changes may affect the azure services and regions you use
        * Resource Health 
            * Tailored view of actual Azure resources
            * Provides information about the health of your individual cloud resources, such as your specific VM Instance
* Azure Monitor - platform for collecting data on resources, analyzing that data, visualizing the information, and acting on results.
    * Azure Log Analytics
        * Tool in Azure portal where you'll write and run log queries n the data gathered by Azure Monitor.
    * Azure Monitor Alerts
        * Automated way to stay informed when Azure Monitor detects a threshold being crossed.
        * Can also attempt corrective action
    * Application Insights
        * Monitors wb applications
        * Capable of monitoring apps that run in Azure, on-prem, or in a different cloud environment.
        * Can get the following information.
            * Request rates, response times, failure rates
            * Dependency rates, response times, and failure rates
            * Page views and load performance
            * Ajax calls from web pages.
            * User and session counts
            * Performance counters from Windows or Linux server machines, such as CPU, memory, and network usage.

