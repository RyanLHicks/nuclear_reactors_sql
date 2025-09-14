# Nuclear Reactor SQL Project

## Introduction

**Background**
- Why I'm doing this: I want to practice and enhance my SQL skills and explore the landscape of nuclear reactors around the world. This project will allow me to master SQL queries and comprehend the scope of nuclear reactors around the world
- Why I'm interested in nuclear energy: I beleive that understanding nuclear reactors now will allow me to be positioned greatly for the future search of clean and reliable energy. 
- Why I'm interested in SQL: Using SQL will allow me to leverage mass amounts of important data to make intelligent desicions for my personal, professional, and general interest topics such as nuclear energy, healthcare, technology, financial markets, and many other applications that will fuel my life.

**Major Topics Addressed**
- Reactor Demographics and Industry Leaders
- Operational Performance and Efficiency
- Historical Development Trends
  
**Tables and Data**
- ERD
  
  <img width="632" height="671" alt="Screenshot 2025-08-26 143710" src="https://github.com/user-attachments/assets/8a500eec-3c04-470e-898b-f47b2e704f57" />

- Tables:
  * [Operational Reactors](https://github.com/user-attachments/assets/2a108d77-0b85-4d7f-b109-26c4672b216f) (MAIN TABLE) - Shows the current reactors in operation with country, name, reactor type, model, energy capacity, connection date. Connects with operators, suppliers, fuel, coolant, and type.
    * [Coolants](https://github.com/user-attachments/assets/96e236eb-56ac-4ec8-a992-cc423afbc348) : Links with operational reactors and shows the coolants associated with a specefic reactor.
    * [Fuel Info](https://github.com/user-attachments/assets/74ee1860-014f-49fd-8430-0a221e68206c) : Links with operational reactors and shows the fuels associated with a specefic reactor.
    * [NSSS Suppliers](https://github.com/user-attachments/assets/fef7be63-5f3d-4c5a-a748-fd18705994dc) : Links with operational reactors and shows the suppliers associated with a specefic reactor.
    * [Operator](https://github.com/user-attachments/assets/175b1a5a-201b-4a7e-a1f4-7146ea571b3f) : Links with operational reactors and shows the operators associated with a specefic reactor.
    * [Reactor Types](https://github.com/user-attachments/assets/b7b68d91-f621-489b-8f2f-125d8af29bcd) : Links with operational reactors and shows the reactor type associated with a specefic reactor.
 
  * [All Reactors](https://github.com/user-attachments/assets/4b416c4d-8c32-4e58-bd0b-b274da73cb4b) (MAIN TABLE) : Shows everything in operational reactors table and includes shutdown reactors and shutdown dates.
 
  * [Annual Global Summary](https://github.com/user-attachments/assets/ea910ae4-5a0a-4249-8de6-7ed8d55148f8) (MAIN TABLE) : Shows the year, commercial operation reactor units, reactor construction starts, reactor grid connection units, energy ammount for connection, and energy ammount for commercial operation date
 
  * [Outage Statistics 2023](https://github.com/user-attachments/assets/c6368c2e-1ce1-43dc-b6a6-d1d6e63535d4) (MAIN TABLE) : Shows the reactor type, number of units, outage hours per unit, planned outage percent, unplanned outage percent. and external outage percent

- Data:
  
  ## Questions
  ### What are the major demographics and industry leaders for nuclear power since 1954?
  **1. What is the most common reactor type and for each country? What is the percentage for each reactor type for each country?**
- SQL Query and Raw Data:
  - [Counts total reactors per type worldwide](https://github.com/user-attachments/assets/aedb2912-e5bb-4f7d-9684-75d586dc36f5)
  - [Each reactor type for each country](https://github.com/user-attachments/assets/dfd1b897-b28d-4b4d-8379-69ac4d1700e8)
  - [CTE to find country reactor type percentage of all operational reactors per country](https://github.com/user-attachments/assets/bdd409f1-342e-48e7-a17a-79b62214fdb9)
      
- Visualization
  - Each reactor type for each country:
    <img width="1600" height="800" alt="Q1" src="https://github.com/user-attachments/assets/d1f47670-aabb-4c5d-a609-81b0ef2ac809" />
    
  - Counts total reactors per type worldwide:
    <img width="745" height="218" alt="image" src="https://github.com/user-attachments/assets/a0dcbf18-4839-4c0e-ba9b-c91d3d2e3a10" />

  - Country and reactor type percentage of all operational reactors:
    <img width="2526" height="1139" alt="image" src="https://github.com/user-attachments/assets/0e717594-9c8c-425a-b65d-b2b7a946e4c5" />

- Interpretation and Use:
  - This section focused on the reactor types and was incredibily insightful to which reactor types the world and each country priotizes. It is clear that pressurized water reactors are the top choice for a lot of countries. Now we can investigate that further as to why, is it cost effective, safe, or really effiecent at using resources for energy? This is a great first step into discovering the nuclear energy landscape. 

**2. Who is the top reactor supplier and operator for specefic countries and reactor types?**
- SQL Query and Raw Data:
  - [Finds the top nuclear reactor operators](https://github.com/user-attachments/assets/47938609-9f11-4b91-9d8c-6d191ba76d2d)
  - [CTE to find the percentage of operator share of the total nuclear reactor market](https://github.com/user-attachments/assets/1b05c702-6aeb-4cc6-8537-515f27b9e389)
  - [Finds the top nuclear reactor suppliers](https://github.com/user-attachments/assets/9f706c23-fac5-4314-8351-4e2d5698505f)
  - [CTE to find the percentage of supplier share of the total nuclear reactor market](https://github.com/user-attachments/assets/481e7934-81a5-4daa-9e0f-dcc7712524a8)
  - [Finds top suppliers for nuclear reactor type](https://github.com/user-attachments/assets/25fcbff4-0c2f-48aa-a3da-dd96d6e35e26)
  - [Finds top operators for nuclear reactor type](https://github.com/user-attachments/assets/5fd2952a-3608-4da8-90da-0b3c79515780)
  - [Finds the relationships between reactor suppliers and operators](https://github.com/user-attachments/assets/8dbd4a81-8df7-4957-9d4c-8efa9c331a84)
  - [Finds the relationships between reactor suppliers and operators in the USA](https://github.com/user-attachments/assets/d6a2dd33-68ef-4b85-a945-749df0dc4899)


- Visualization
  - Nuclear reactors by operator:
    <img width="2537" height="1267" alt="image" src="https://github.com/user-attachments/assets/e8f4b529-d5a6-49ae-a28f-ddd5dbcc12bb" />
    
  - Nuclear reactors by supplier:
    <img width="2516" height="1139" alt="image" src="https://github.com/user-attachments/assets/47bcb065-82e5-45dd-8138-43bbbf060581" />

  - Nuclear reactors by supplier and operator relationships
   <img width="3159" height="1180" alt="image" src="https://github.com/user-attachments/assets/80698c40-2539-41f4-ac67-6be9c14510b5" />

 
- Interpretation and Use:
  - This section focused on the supplier and operator data. This is a good section for potential investors into nuclear reactors to get a general idea of who owns majority of the reactors and supplies them as well. This can be potentially expanded into finding the financials into reactor data per supplier and operator but for now it's good starting point for general data. 

  ### How good is the operational performance and efficiency for current nuclear reactors around the world?

  ### What is the historical development of nuclear reactors and how does it influence future energy sources?
  

  
  
