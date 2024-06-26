## [Intro](https://learn.microsoft.com/en-us/training/modules/explore-fundamentals-data-visualization/1-introduction)
- Data Modeling and Viz is at the heart of Business Intelligence
- Powers reporting and decision making that helps organizations succeed
- Fundamental principles of analytical data modeling and visualization, using Power BI as a platform to explore these principles in action

## [Power BI tools and workflow](https://learn.microsoft.com/en-us/training/modules/explore-fundamentals-data-visualization/2-power-bi)
- For enterprise-scale business analytics, an integrated solution that can support complex data modeling, interactive reporting, and secure sharing is required

- Microsoft Power BI
    - Suite of tools and services that data analysts can use to build interactive data visualizations for business users to consume

![alt text](image-27.png)

- Power BI Desktop 
    - Microsoft Windows application in which you can import data from a wide range of data sources
    - combine and organize data from these sources in an analytics data model
    - create reports that contain interactive visualizations of the data
- Power BI Service
    - Cloud Service in which reports can be published and interacted with by business users. You can also do some basic data modeling and report editing directly in the service using a web browser
    = Functionality is limited compared to Power BI Desktop tool
    - Use the service to schedule refreshes of the data sources on which your reports are based, and to share reports with others
    - Define dashboards and apps that combine related reports in a single easy to consume location


## [Core Concepts of Data Modeling](https://learn.microsoft.com/en-us/training/modules/explore-fundamentals-data-visualization/3-data-modeling)
- Analytical Models
    - Structure data to support analytics
    - Models are based on related tables of data, and define the numeric values that you want to analyze ore report (measures), and entities by which you want to aggregate them (dimensions)
    - Model might include a table, containing numeric measures for sales (such as revenue or quantity) and dimensions for products, customers, and time.
        - Enables you to aggregate the sale measures across one ore more dimensions. i.e. Identify total revenue by customer, or total items sold by product per month
    - Conceptually, the model forms a multidimensional structure which is commonly referred to as a cube, in any which point the dimensions intersect represents an aggregated measure for those dimensions
    - Although we refer to an analytical model as a cube, there can be more, or fewer, than three dimensions. 

![alt text](image-28.png)

- Tables and Schema
    - Dimension tables represent the entities by which you want to aggregate numeric measures - for example product or customer
    - Each entity is represented by a row with a unique key value
    - Remaining columns represent attributes of an entity.
    - Common in most analytical models to include a Time dimension so you can aggregate numeric measures associated with events over time.
    - Star Schema
        - Numeric measures which will be aggregated in various dimensions are stored in Fact tables. 
        - Each row in a fact table represents a recorded event
        - Fact table is related to one or more dimensions
    - Snowflake Schema 
        - Dimension tables are related to additional tables containing more details

- Attribute Hierarchies
    - Hierarchies enable you to drill up or drill down to find aggregated values at different levels in a hierarchical dimension
    
![alt text](image-29.png)


- Analytical Modeling in Microsoft Power BI
    - Can use Power BI to define an analytical model from tables of data, which can be imported from one or more data source
    - Then can use the data modeling interface on the Model tab of Power BI Desktop to define your analytical model by creating relationships between fact and dimension tables, defining hierarchies, setting data types and display formats for fields in the tables, and managing other properties of your data.

![alt text](image-30.png)


## [Considerations for Data Visualization](https://learn.microsoft.com/en-us/training/modules/explore-fundamentals-data-visualization/4-data-visualizations)
- After you've created a model, you can use it to generate data visualizations that can be included in a report
- Many kinds of data visualization. Some commonly used and some more specialized
- Power BI includes extensive set of built-in visualizations, which can be extended with custom and third party visualizations
- Some common data visualizations
- Tables and Text
    - Simplest ay to communicate data
    - Useful when numerous related values must be displayed, and individual text values in cards can be a useful way to show important figures and metrics

![alt text](image-31.png)

- Bar and Column Charts
    - Good way to visually compare numeric values for discrete categories

![alt text](image-32.png)

- Line Charts
    - Can also be used to compare categorized values, and are useful when you need to examine trends, often over time.

![alt text](image-33.png)


- Pie Charts
    - Often used in business reports to visually compare categorized values as proportions of a total

![alt text](image-34.png)

- Scatter Plots
    - Useful when you want to compare two numeric measures and identify a relationship or correlation between them

![alt text](image-35.png)

- Maps
    - Great way to visually compare values for different geographic areas or locations

![alt text](image-36.png)

- Interactive Reports in Power BI
    - Visual elements for related to data are automatically linked to one another and provide interactivity
    - Selecting and individual category in one visualization will automatically filter and highlight that category in other related visualizations in the report

![alt text](image-37.png)