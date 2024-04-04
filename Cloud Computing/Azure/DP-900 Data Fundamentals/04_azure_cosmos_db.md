## [Intro](https://learn.microsoft.com/en-us/training/modules/explore-non-relational-data-stores-azure/1-introduction)
- Relational dbs store data in relational tables, but sometimes the structure can be too rigid and leads to poor performance unless you spend time implemented detailed tuning
- Other models like NoSQL databases exist. These models store data in other structures such as docs, graphs, key-value stores, and column family stores
- Azure cosmos DB is a highly scalable cloud service for NoSQL data

## [Describe Azure Cosmos DB](https://learn.microsoft.com/en-us/training/modules/explore-non-relational-data-stores-azure/2-describe-azure-cosmos-db)
- Supports multiple APIs that enable developers to use the programming semantics of common data stores to work with data in a Cosmos DB database
- Internal data structure is abstracted, enabling developers to use Cosmos DB to store and query data using APIs with which they're already familiar
- API 
    - Application Programming Interface
    - DB management systems (and other software frameworks) provide a set of APIs that devs can use to write programs that need to access data
    - APIs vary for different database management systems
- Cosmos DB uses indexes and partitioning to provide fast read and write performance and can scale to massive volumes of data. 
- You can enable multi-region writes, adding the Azure regions of your choice to your Cosmos DB account so that globally distributed users can each work with their data in local replica
- When to use
    - Highly scalable
    - Automatically allocates space in a container for partitions
    - Each partition can grow to 10GB ins ize
    - Indexes are created and maintained automatically
    - Virtually no administrative overhead
- Foundational service in Azure, Cosmos DB has bee used by many of microsoft's products for mission critical apps
- Highly suitable for the following
    - IoT and telematics
        - Large amounts of data in frequent bursts of activity
        - Can accept and store info quickly
        - Data can be used by analytics services, such as Azure Machine Learning, Azure HDInsight, and PowerBI
        - Can also process data in real-time using Azure Functions that are triggered as data arrives in the database
    - Retail and Marketing
        - Used by microsoft for E-Commerce platforms that run as part of Windows and Xbox Live
        - Also used in retail industry for storing catalog data and for event sourcing in order processing pipelines
    - Gaming
        - DB tier is a crucial component of gaming applications
        - Modern games perform graphical processing on mobile/console clients, but rely on the cloud to deliver customized and personalized content like in-game stats, social media integration, high-score leaderboards.
        - Often require single-millisecond latencies for reads and write to provide an engaging in-game experience.
        - Needs to be fast and able to handle massive spikes in request rates during new game launches and feature updates
    - Web and Mobile Apps
        - Well suited for modeling social interactions
        - Integrating with third party services
        - Xamarin framework 


## [Identify Azure Cosmos DB APIs]()

## [Explore Azure Cosmos DB]()
