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
  #### **1. What reactor types are most involved in nuclear energy**
- SQL Query and Raw Data:
  - [Counts total reactors per type worldwide](https://github.com/user-attachments/assets/aedb2912-e5bb-4f7d-9684-75d586dc36f5)
  - [Each reactor type for each country](https://github.com/user-attachments/assets/dfd1b897-b28d-4b4d-8379-69ac4d1700e8)
  - [CTE to find country reactor type percentage of all operational reactors per country](https://github.com/user-attachments/assets/bdd409f1-342e-48e7-a17a-79b62214fdb9)
  - [Finds the top producing reactor types in MWE](https://github.com/user-attachments/assets/b6cb9c77-b0df-4908-b04d-511f0df98a21)
  - [Finds the percentage of top producing nuclear reactor types](https://github.com/user-attachments/assets/ef6dc24b-1f69-4ae9-801e-82f2651c242f)
  - [Searches for the top producing nuclear reactor types per country](https://github.com/user-attachments/assets/1766badb-39e2-432a-8679-5db3b6dc39db)
  - [Queries the total energy per reactor type](https://github.com/user-attachments/assets/373d5b7a-5162-4570-bb38-9c7b47fb2a8c)
  - [Finds the top energy output reactor types for the USA](https://github.com/user-attachments/assets/2a8e2160-210b-404a-b9d0-dda5ac709d02)
  - [Find the top energy output reactor types for top producing countries](https://github.com/user-attachments/assets/20e5b533-1286-4ded-8e89-858eeb0f196f)
    
- Visualization
  - Each reactor type for each country:
    <img width="1600" height="800" alt="Q1" src="https://github.com/user-attachments/assets/d1f47670-aabb-4c5d-a609-81b0ef2ac809" />
    
  - Counts total reactors per type worldwide:
    <img width="745" height="218" alt="image" src="https://github.com/user-attachments/assets/a0dcbf18-4839-4c0e-ba9b-c91d3d2e3a10" />

  - Country and reactor type percentage of all operational reactors:
    <img width="2526" height="1139" alt="image" src="https://github.com/user-attachments/assets/0e717594-9c8c-425a-b65d-b2b7a946e4c5" />

  - Top producing reactor types by MWE
    <img width="1000" height="600" alt="Q5-2" src="https://github.com/user-attachments/assets/aced4822-2b72-49ac-b166-aea93f1a711c" />

  - Total energy production per reactor type
    <img width="1000" height="600" alt="Q20" src="https://github.com/user-attachments/assets/0e03ef1f-f745-462c-b772-5bef6fbf998a" />

- Interpretation and Use:
  - This section focused on the reactor types and was incredibily insightful to which reactor types the world and each country priotizes. It is clear that pressurized water reactors are the top choice for a lot of countries. Now we can investigate that further as to why, is it cost effective, safe, or really effiecent at using resources for energy? This is a great first step into discovering the nuclear energy landscape. 

#### **2. Who are the reactor suppliers and operators contributing the most?**
- SQL Query and Raw Data:
  - [Finds the top nuclear reactor operators](https://github.com/user-attachments/assets/47938609-9f11-4b91-9d8c-6d191ba76d2d)
  - [CTE to find the percentage of operator share of the total nuclear reactor market](https://github.com/user-attachments/assets/1b05c702-6aeb-4cc6-8537-515f27b9e389)
  - [Finds the top nuclear reactor suppliers](https://github.com/user-attachments/assets/9f706c23-fac5-4314-8351-4e2d5698505f)
  - [CTE to find the percentage of supplier share of the total nuclear reactor market](https://github.com/user-attachments/assets/481e7934-81a5-4daa-9e0f-dcc7712524a8)
  - [Finds top suppliers for nuclear reactor type](https://github.com/user-attachments/assets/25fcbff4-0c2f-48aa-a3da-dd96d6e35e26)
  - [Finds top operators for nuclear reactor type](https://github.com/user-attachments/assets/5fd2952a-3608-4da8-90da-0b3c79515780)
  - [Finds the relationships between reactor suppliers and operators](https://github.com/user-attachments/assets/8dbd4a81-8df7-4957-9d4c-8efa9c331a84)
  - [Finds the relationships between reactor suppliers and operators in the USA](https://github.com/user-attachments/assets/d6a2dd33-68ef-4b85-a945-749df0dc4899)
  - [Find the suppliers contributing the most nuclear energy](https://github.com/user-attachments/assets/820df88a-4d65-4b72-bf4e-a638975d97c1)

- Visualization
  - Nuclear reactors by operator:
    <img width="2537" height="1267" alt="image" src="https://github.com/user-attachments/assets/e8f4b529-d5a6-49ae-a28f-ddd5dbcc12bb" />
    
  - Nuclear reactors by supplier:
    <img width="2516" height="1139" alt="image" src="https://github.com/user-attachments/assets/47bcb065-82e5-45dd-8138-43bbbf060581" />

  - Nuclear reactors by supplier and operator relationships
   <img width="3159" height="1180" alt="image" src="https://github.com/user-attachments/assets/80698c40-2539-41f4-ac67-6be9c14510b5" />

 
- Interpretation and Use:
  - This section focused on the supplier and operator data. This is a good section for potential investors into nuclear reactors to get a general idea of who owns majority of the reactors and supplies them as well. This can be potentially expanded into finding the financials into reactor data per supplier and operator but for now it's good starting point for general data.

#### **3. What countries are most involved with nuclear energy?**
- SQL Query and Raw Data:
  - [Counts total reactors per country and percent dominance](https://github.com/user-attachments/assets/103206b6-51dc-444c-be6d-fa03019baf80)
  - [Finds the reactor type diversity by country](https://github.com/user-attachments/assets/99f94f98-14d2-4113-bbc6-2de49605579b)
  - [Finds which countries are supplying the most energy](https://github.com/user-attachments/assets/6178def2-4d42-4711-b0b7-05376cd01d4b)
  - [Shows the percent dominance in energy by country](https://github.com/user-attachments/assets/e33115e3-7ed0-403f-959c-c27d2a043e42)
  - [Shows total mwe output per countries reactors](https://github.com/user-attachments/assets/bf55fe72-7c47-49aa-ba8c-c3ac886975ad)

- Visualization
  - Total reactors for each country:
    <img width="1000" height="1400" alt="Q4" src="https://github.com/user-attachments/assets/0eb816a1-442e-43f7-ad83-01ef02f042bf" />
   
  - Counts reactor type diversity:
    <img width="1200" height="600" alt="Q7png" src="https://github.com/user-attachments/assets/1d306a63-ac36-462f-b6e4-b9401e8dacca" />

- Interpretation and Use:
  - We found out the total number of reactors per country and the dominance it has over the total nuclear energy landscape. This is important for understanding which countries value clean energy the most and also may indicate which countries require the most energy. This can be further expanded into finding out which countries in the future may invest more into this energy type and if a nuclear engineer saw this they may think that the United States, China, and France are the best places for job security.

**4. What does the energy output look like for nuclear power?**
- SQL Query and Raw Data:
  - [The total MWE (Mega Watts Electrical) produced by nuclear energy worldwide](https://github.com/user-attachments/assets/ebb6a4a8-7486-403b-b39c-9e20f7d4e93a)
  - [Finds MWE produced per reactor units world wide](https://github.com/user-attachments/assets/59d32550-c936-4d94-8c6e-23f5ae2c54e8)
  - [Finds the MWE produced for a specefic coolant type](https://github.com/user-attachments/assets/5de369f2-5179-4093-acaa-b62e192b4f88)

- Visualization
 
 
- Interpretation and Use:
  - This section focused on the supplier and operator data. This is a good section for potential investors into nuclear reactors to get a general idea of who owns majority of the reactors and supplies them as well. This can be potentially expanded into finding the financials into reactor data per supplier and operator but for now it's good starting point for general data.

  ### How good is the operational performance and efficiency for current nuclear reactors around the world?

  ### What is the historical development of nuclear reactors and how does it influence future energy sources?
  

  
  
