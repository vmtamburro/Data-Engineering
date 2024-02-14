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

## Explore Databases

## Explore Transactional Data Processing

## Explore Analytical Data Processing


# Explore Data Roles and Services

## Explore Job Roles in the World of Data

## Identify Data Services