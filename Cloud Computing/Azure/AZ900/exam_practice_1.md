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
    * Can be used to filter inbound and outbound network traffic to and from Azure Resources, including virtual machines.
    