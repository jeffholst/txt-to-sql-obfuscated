# 🚀 About

This repo serves as a foundation for testing AI text-to-SQL capabilities using a non-obvious database schema. The provided schema consists of four interconnected tables (`Alpha`, `Echo`, `Kilo`, and `Papa`) with intentionally non-intuitive relationships and column names. This setup challenges AI models to accurately understand and interpret the underlying data structure when generating SQL queries from natural language input.

**Key Features:**

1. **Non-Obvious Relationships:**
   The tables are related in a non-obvious manner, requiring deeper comprehension for accurate query generation.

2. **Varied Data Types:**
   The schema includes diverse data types such as integers, floats, booleans, and timestamps, enhancing the complexity of potential queries.

3. **Complex Queries:**
   The schema supports complex queries involving multiple joins, aggregations, subqueries, and filters, testing the AI's ability to handle sophisticated SQL generation.

**Testing AI Text-to-SQL:**

1. **Schema Understanding:**
   Assess how well the AI model understands the schema, including table structures and relationships.

2. **Query Generation:**
   Evaluate the AI's ability to convert natural language questions into accurate and efficient SQL queries.

3. **Performance Metrics:**
   Measure the accuracy and performance of the AI model in generating correct SQL statements for varied and complex queries.

4. **Error Handling:**
   Observe how the AI handles ambiguous or unclear natural language inputs and whether it can still generate meaningful SQL queries.


# 📁 Project Structure

```txt
├── queries
│   └── sample text prompts with expected SQL results 
└── schema
    └──  SQL to create and populate the database schema
```

# 📚 Schema Overview

1) Table: Alpha
   - alphaID (Primary Key, Integer)
   - bravoCode (Integer)
   - charlieDate (DateTime)
   - deltaValue (Float)
1) Table: Echo
   - echoID (Primary Key, Integer)
   - foxtrotLevel (Integer)
   - golfStatus (Boolean)
   - hotelAmount (Float)
   - julietDate (DateTime)
1) Table: Kilo
   - kiloID (Primary Key, Integer)
   - mikeReference (Integer)
   - novemberRate (Float)
   - oscarDate (DateTime)
1) Table: Papa
   - papaID (Primary Key, Integer)
   - quebecValue (Float)
   - romeoFlag (Boolean)
   - sierraCount (Integer)

**Relationships**

   - Alpha (bravoCode) is related to Echo (foxtrotLevel)
   - Echo (echoID) is related to Kilo (mikeReference)
   - Kilo (novemberRate) is related to Papa (quebecValue)
   - Papa (sierraCount) is related to Alpha (alphaID)


# 📝 Sample Queries

| Type           | Prompt                                                                                             |
| :------------- | :------------------------------------------------------------------------------------------------  |
| Simple Join    | Get the alphaID and hotelAmount for entries with hotelAmount greater than 1500                     |
| Aggreation     | Count the number of Alpha records with corresponding Echo records                                  |
| Date Filtering | Find the kiloID and papaID where oscarDate is between '2024-03-05' and '2024-03-15'                |
| Nested Query   | Get the echoID and hotelAmount for the highest hotelAmount where golfStatus is TRUE                |
| Complex Join   | Find alphaID, echoID, kiloID, and papaID where deltaValue is greater than 50 and romeoFlag is TRUE |