# [Explore Relational Data in Azure](https://learn.microsoft.com/en-us/training/paths/azure-data-fundamentals-explore-relational-data/)

* Relational data is the heart of most business applications
* Foundation of Enterprise Data Solutions
* Services for managing relational databases provided by Azure
* Relational database model was designed to solve the problem of multiple arbitrary data structures
* Provides a standard way of representing and querying data that can be used by any application
* One of the key advantages of relational database model is the use of tables
    * Flexible, intuitive, and efficient way to store and access structured information.
* Simple yet powerful relational model is used by organizations of all types for a borad variety of information management needs.

## [Understand Relational Data](https://learn.microsoft.com/en-us/training/modules/explore-relational-data-offerings/2-understand-relational-data)
* Model collections of entities from the real world as tables
* An entity can be anything for which you want to record information -typically important objects and events
* Tables contain rows, and each row represents a single instance of that entity
* Relational tables are a format for structured data and each row in a table has the same columns; through in some cases, not all columns need to have a value
* Each column stores data of a specific data type
* Available datatypes that you can use when defining a table depend on the system you are using. 
* Standard datatypes are defined by the American National Standards Institute (ANSI)  that are supported by most database systems.


## [Understand Normalization](https://learn.microsoft.com/en-us/training/modules/explore-relational-data-offerings/3-normalization)
* Normalization is a term used by db professionals for a schema design process that minimizes data duplication and enforces data integrity
* While there are many complex rules that define the process of refactoring data into various levels of normalization, a simple definition for practicel purposes is
    * Separate each entity into its own table
    * Separate ach discrete attribute into its own column
    * Uniquely identify each instance (row) using a primary key
    * Use foreign key columns to link tables.

Example:

![alt text](image-8.png)

* Each entity that is represented in the data is stored in its own table, and each discrete attribute of those entities is in its own column
* Recording each instance of an entity as a row in an entity-specific table removes duplication of data.
* For example, to change a customer's address, you need to only modify the value in a single row.
* The decomposition of attributes into individual columns ensures that each value is constrained to an appropriate data type.
* The creation of individual columns provides a useful level of granularity for querying
* Instances of each entity are uniquely identified by an ID oor other key value known as a primary key
* When one entity references another, the primary key of the related entity is stored as a foreign key
* You can look up the address of the customer (which is only stored once) for each record in the Order Table by referencing the corresponding Customer Table
* Relational Database Management System (RDBMS) can enforce referential integrity to ensure that a value entered into a fk field has an existing corresponding primary key.
* In some cases a key can be defined as a composite key, or a unique combination of multiple columns

## [Explore SQL](https://learn.microsoft.com/en-us/training/modules/explore-relational-data-offerings/4-query-with-sql)

* SQL stands for Structured Query Language and is used to communicate with a relational database.
* It's the standard language for relational database management systems. 
* SQL statements are used to perform tasks such as update data in a database or retrieve data from a database.
* Some common relational database management systems that use SQL include Microsoft SQL server, MySQL, PostgreSQL, MariaDB, and Oracle
* SQL was originally standardized by ANSI and ISO. Standard has been extended several times as db vendors have added new features to their systems.
* SQL statements such as SELECT, INSERT, UPDATE, DELETE, CREATE, and DROP
* Many db management system have their own proprietary extensions to handle the specifics
* MS SQL Server and Azure Database services are based on SQL Server db engine that uses Transact-SQL
* PostgreSQL and MySQL have their own versions of these features.
* Popular Dialects
    * Transact-SQL
    * pgSQL - (PostgreSQL)
    * PL/SQL - Oracle. PL/SQL stands for Procedural Language/SQL
* SQL Statement Types
    * Data Definition Language (DDL)
        * Used to create, modify, and remove tables and other object in the database
            * CREATE
            * ALTER
            * DROP
            * RENAME
    * Data Control Language (DCL)
        * manage access to objects in a database by granting, denying or revoking permissions to specific users or objects
            * GRANT
            * DENY
            * REVOKE
    * Data Manipulation Language (DML)
        * used to manipulate the rows in tables.
            * SELECT
            * INSERT
            * UPDATE
            * DELETE


## [Describe Database Objects]()


# [Explore Relational Database Services in Azure](https://learn.microsoft.com/en-us/training/modules/explore-provision-deploy-relational-database-offerings-azure/)

## [Describe Azure SQL services and capabilities]()

## [Describe Azure services for open-source databases]()

## [Explore Azure Relational Database Services]()

