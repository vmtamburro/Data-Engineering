- Which job is responsible for designing database solutions, creating databases, and developing stored procedures?
    - Database Engineer - Database Engineers create databases. Database analysts use data from a database to make business decisions. Database users use a database. Database administrators maintain existing databases.

- Which two DML statements are used to modify the existing data in a table? 
    - `UPDATE` and `MERGE` modify the existing data in a table.

- Which data service allows you to migrate an entire Microsoft SQL Server to the cloud without requiring that you manage the infrastructure after the migration?
    - Azure SQL Managed Instance. SQL managed instance allows you to migrate an entire SQL server to the cloud without requiring that you manage the infrastructure after the migration. You must manage all aspects of SQL Server on Azure virtual machines. Azure SQL Database supports most, but not all, core database-level capabilities of SQL Server.

- Which open-source database has built-in support for temporal data?
    - MariaDB has built-in support for temporal data. It enables applications to query data as the data appeared in previous points in time.

- Which type of Azure Storage is the least expensive option that allows you to store new or modified image files?
    block blobs in the Archive tier. Block blobs are used for files and the archive tier is the least expensive option. The cool tier is not the least expensive option. Append blobs cannot be updated.


- Which type of Azure Storage is used to store large amounts of files to be shared with virtual machines by using SMB?
    - Azure Files. Used to share files using NFS and SMB. Data Lake Storage Gen2 is used for using large amounts of data to be processed, not to be shared among virtual machines. Page blobs are used for VHDs. Table storage is used for two dimensional tables.

Which are two characteristics of Azure Table storage?
    - Each Row Key Value is unique within a table partition
    - Items in the same partition are stored in a RowKey finder.


Which Azure Cosmos DB API should use for data in the BSON format?
    - MongoDB API stores data in the BSON format. The table API is used for key/value pairs. The Cassandra API is used for tabular data in a column-family storage. The Gremlin API is used for graph databases.

You need to process many JSON files every minute, while keeping the data from the files accessible by using native queries. Which Azure Cosmos DB API should you use?
    - NoSQL.  SQL is the native API in cosmos DB. It manages data in the JSON format. The Cassandra API uses a column-family storage structure. The Table API is used to work with data in key/value tables. The Gremlin API is used with data in a graph structure.

Which two attributes are characteristics of a transactional data workload?
    - Highly Normalized
    - Optimized for CRUD operations

Which data service allows you to use every feature of MS SQL Server in the cloud?
    - SQL Server on an Azure Virtual Machine running Windows.

Which type of Azure Storage is the least expensive option that allows you to store new or modified image files?
    - block blobs in the Archive tier. Archive is te least expensive option.

what are two characteristics of Azure Table Storage?
    - Each RowKey value is unique within a table parition
    - Items in the same partition are stored in a RowKey order

Which three services can be used to ingest data for stream processing?
    - Azure Event Hubs
    - Azure IOT Hub
    - Azure Data Lake Storage.
    - (Note: Azure SQL Database and Azure Function are outputs)

Which service allows you to perform on-demand analysis of large volumes of data from text logs, websites, and IoT devices by using a common querying language for all the data sources?
    - Data Explorer. 