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
        * Maintain your cloud environment. Everytime you provision a VM, storage and networking are also provisioned. If your deprovision the VM, you may not deprovision the storage and networking intentionally or unintentionally.
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


## Features and Tools in Azure for Governance and complicance

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