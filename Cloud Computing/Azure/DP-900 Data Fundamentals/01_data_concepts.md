# Explore Data Concepts

## Identify Data Formats

* Data - collection of facts such as numbers, descriptions, and observations used to record information. 
* Data structures often represents entities that are important to an organization.
* Each entity has one or more attributes
* Data Classification
    * Structured Data
        * Adheres to a fixed schema, so all the data has the same fields or properties.
        * Most commonly, the schema is tabular
            * Data is represented in one or more tables that consist of     
                * rows to represent each instance of a data entity
                * columns to represent the attributes of the entity
    * Semi-Structured
        * Information that has some structure but allows for some variation between entity instances.
        * Example: while most customers may have an email address, some might have multiple email addresses, ad some might not at all 
        * One common format for semi-structured data is JSON (JavaScript Object Notation)
        * Example shows a pair of JSON docs that represent customer info
    * Unstructured Data
        * Not all data is structured, or even semi-structured. Documents, images, audio, and video data, and binary files might not have a specific structure.
    * Data Stores
        * Organizations typically store data to record details of entities, specific events, or other info in documents, images, and other formats. Stored data can be used for analysis and reporting later.
        * Two broad categories of data store in common use
            * File stores
            * Databases


### Structured Example
![alt text](image.png)


### Semi-Structured Example
```json
// SEMI-STRUCTURED

// Customer 1
{
  "firstName": "Joe",
  "lastName": "Jones",
  "address":
  {
    "streetAddress": "1 Main St.",
    "city": "New York",
    "state": "NY",
    "postalCode": "10099"
  },
  "contact":
  [
    {
      "type": "home",
      "number": "555 123-1234"
    },
    {
      "type": "email",
      "address": "joe@litware.com"
    }
  ]
}

// Customer 2
{
  "firstName": "Samir",
  "lastName": "Nadoy",
  "address":
  {
    "streetAddress": "123 Elm Pl.",
    "unit": "500",
    "city": "Seattle",
    "state": "WA",
    "postalCode": "98999"
  },
  "contact":
  [
    {
      "type": "email",
      "address": "samir@northwind.com"
    }
  ]
}
``` 

### Unstructured Data
![alt text](image-1.png)


## Export File Storage

* The ability to store data in files is a core element of any computing system.
    * Hard Disk Storage
    * Removable Media
    * Centralized File Storage System (increasingly hosted in the cloud) which offers cost-effective, secure, and reliable storage for large volumes of data.
    * Specific format depends on a number of factors
        * Type of data being stored
        * Applications and services that will need to read, write, and process the data
        * Need for data files to be readable by humans, or optimized for efficient storage and processing.

* Delimited Text Files
    * Plain text format with specific field delimiters and row terminators.
    * Most common format is comma-separated values (CSV). Fields are separated by commas, and rows are terminated by a carriage return/new line.
    * Optionally, the first line may include the field names
    * Other common formats include tab-separated values (TSV) and space-delimited or fixed-width data.
    * Delimited text is a good choice for structured data that needs to be accessed by a wide range of applications and services in a human-readable format.


* JavaScript Object Notation (JSON)
    * Hierarchical document schema used to define data entities that have multiple attributes
    * Flexible that's good for structured/semi-structured data
* Extensible MArkup Language (XML)
    * Human-readable data format popular in 90's-2000s. Superseded by less verbose JSON but there are still some systems that use XML to represent data. 
* Binary Large Object (BLOB)
    * Ultimately all files are stored in binary format.
    * Bytes of binary data are mapped to printable chars (through char encoding scheme like ASCII or Unicode)
    * Some file formats store the data as raw binary that must be interpreted by applications and rendered.
    * Video, Audio, Application-specific documents.
    
* Optimized file formats
    * human-readable formats are not optimized for storage space or processing
    * over time some specialized formats that enable compression, indexing, and efficient storage and processing have been developed
        * Avro
            * Row based format created by Apache
            * Each record contains a header that describes the structure of the record, stored as JSON
            * Application uses the info in the header to parse the binary data
            * Good format for compressing data and minimizing storage and network bandwidth requirements
        * ORC (Optimized Row Columnar format)
            * Organizes data into columns rather than rows
            * Developed by HortonWorks for optimizing read/write operations in Apache Hive
                * Apache Hive is a data warehouse system that supports fast data summarization and querying over large datasets
            * ORC file contains stripes of data. Each stripe holds data for a column or set of columns. Contains an index in the rows of the stripe, the data for each row, and a footer that holds statistical information on each column.
        * Parquet
            * Another columnar format. Created by Cloudera and Twitter. Parquet file contains row groups. Data for each column is stored together in the same row group. 
            * Each row group contains one or more chunks of data. 
            * Parquet file includes metadata that describes the set of rows found in each chunk. Application can use this metadata to quickly locate the correct chunk for a given set of rows and retrieve the data in the specified columns for these rows.
            * Parquet specializes in storing and processing nested data types efficiently.
            * Supports efficient compression and encoding schemes.


### XML Example
```xml
<Customers>
  <Customer name="Joe" lastName="Jones">
    <ContactDetails>
      <Contact type="home" number="555 123-1234"/>
      <Contact type="email" address="joe@litware.com"/>
    </ContactDetails>
  </Customer>
  <Customer name="Samir" lastName="Nadoy">
    <ContactDetails>
      <Contact type="email" address="samir@northwind.com"/>
    </ContactDetails>
  </Customer>
</Customers>
```


### CSV Example
```
FirstName,LastName,Email
Joe,Jones,joe@litware.com
Samir,Nadoy,samir@northwind.com
```



## Explore Databases

## Explore Transactional Data Processing

## Explore Analytical Data Processing


# Explore Data Roles and Services

## Explore Job Roles in the World of Data

## Identify Data Services