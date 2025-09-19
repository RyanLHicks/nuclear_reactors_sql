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
  - [Counts total type of reactors worldwide](https://github.com/user-attachments/assets/aedb2912-e5bb-4f7d-9684-75d586dc36f5):
  
    We can see here that Pressureized Water Reactors (PWR) are the most abundant with 298 and there is only one High Temperture Gas Cooled Reactor (HTGR) in operation.
  - [Each reactor type for each country](https://github.com/user-attachments/assets/dfd1b897-b28d-4b4d-8379-69ac4d1700e8):
    
    This data set shows us that the USA, China, and France have the most PWR's worldwide and the USA has the most Boiling Water Reactors (BWR), Canada has the most Pressurized Heavy Water Reactors (PHWR), Russia has the most Light Water Graphite Reactors (LWGR) and the only two Fast Breeder Reactors (FBR), the UK has the only 8 Gas Cooled Reactors (GCR), and China has the only High Temperature Gas Cooled Reactors (HTGR) as well.  
  - [CTE to find country reactor type percentage of all operational reactors per country](https://github.com/user-attachments/assets/bdd409f1-342e-48e7-a17a-79b62214fdb9):
    
    The main point of this query here shows that the USA has the highest share of BWRs and PWRs and the other countries distributions.
  - [Finds the top producing reactor types in MWE](https://github.com/user-attachments/assets/b6cb9c77-b0df-4908-b04d-511f0df98a21):
    
    It's obvious that this query will show that PWR has the highest MWE output with 283,757 MWE because it's the most abundant and the lowest is HTGR of 150 MWE with only one in operation worldwide.
  - [Finds the percentage of top producing nuclear reactor types](https://github.com/user-attachments/assets/ef6dc24b-1f69-4ae9-801e-82f2651c242f):
    
    Expanding the previous query, PWR has a 77% share of total energy while the HTGR only has a .04% energy share.
  - [Searches for the top producing nuclear reactor types per country](https://github.com/user-attachments/assets/1766badb-39e2-432a-8679-5db3b6dc39db):
    
    Though the US has more PWRs in operation, France dominates the total output with 61,370 MWE for their PWRs. This is interesting to see and France may have more effiecent reactors in operation. The US however, dominates the BWR output with 32,709 MWE.
  - [Queries the total energy per reactor type](https://github.com/user-attachments/assets/373d5b7a-5162-4570-bb38-9c7b47fb2a8c):
    
    This query finds intresting statistics, showing that BWRs have the most efficient energy per unit even though PWRs output the most cumulitivly with 1,050 MWE/BWR reactor and 952 MWE/PWR reactor. This can be used to potentially transition the future reactors for BWR but more research must be done in the financial side of things.
  - [Finds the top energy output reactor types for the USA](https://github.com/user-attachments/assets/2a8e2160-210b-404a-b9d0-dda5ac709d02):
    
    This query is just reiteriating the United States' focus on reactor types with BWRs and PWRs as the main sources. 
  - [Find the top energy output reactor types for top producing countries](https://github.com/user-attachments/assets/20e5b533-1286-4ded-8e89-858eeb0f196f):
    
    We are honing in at the top producing nuclear energy countries of USA, France, and China to investigate what reactor types they prioritize over others and their output for each. 
    
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
  - [Finds the top nuclear reactor operators](https://github.com/user-attachments/assets/47938609-9f11-4b91-9d8c-6d191ba76d2d):
 
    This shows us that Electricite De France is the top operator worldwide with 56 current operational reactors.
  - [CTE to find the percentage of operator share of the total nuclear reactor market](https://github.com/user-attachments/assets/1b05c702-6aeb-4cc6-8537-515f27b9e389):

    This further explains the dominance that Electricite De France has around the world, owning 13.75% of total reactors. 
  - [Finds the top nuclear reactor suppliers](https://github.com/user-attachments/assets/9f706c23-fac5-4314-8351-4e2d5698505f):
 
    This shows us that Framatome and Westinghouse Electric Corp. are the top suppliers around the world, supplying 65 and 64 total reactors around the world.
  - [CTE to find the percentage of supplier share of the total nuclear reactor market](https://github.com/user-attachments/assets/481e7934-81a5-4daa-9e0f-dcc7712524a8):
 
    This further explains the dominance that Framatome and Westinghouse Electric Corp has around the world, supplying 15.97% and 15.72% of total reactors. 
  - [Finds top suppliers for nuclear reactor type](https://github.com/user-attachments/assets/a035b9f2-13da-4697-84d7-5d47d5bfc120):
 
    We can see that the suppliers are further broken down into their reactor type where Framatome and Westinghouse supplies all PWRs. By analyzing this with the supplier list, we can see that most suppliers only produce one reactor type, however, Atomenergomash supplies FBRs, PWRs and LWGRs. 
  - [Finds top operators for nuclear reactor type](https://github.com/user-attachments/assets/029c807f-b098-4481-94d0-b6297517234a):
 
    This does the same analysis for reactor type but for the operator side of things and tells a different story of operators being variable to one reactor type. The operators that deviate are the Joint Stock Company operates, FBRs,  PWRs and LWGRs, Korea Hydro and Nuclear Power Co operating PWRs and PHWRs, CNNC Nuclear Operation Management Company that operate PHWRs and PWRs, EDF energy operates GCRs and PWRs, Nuclear Power Corperation of India operates PHWRs and PWRs, .Energry Nuclear Operations, Exelon, First Energy Nuclear, Northen States Power, Progress Energy, PSEG Nuclear, Southern Nuclear, Tennesse Valley Authority, Teollisuuden Voima OYJ all share a mix of BWRs and PWRs.
  - [Finds the relationships between reactor suppliers and operators](https://github.com/user-attachments/assets/8dbd4a81-8df7-4957-9d4c-8efa9c331a84):
 
    This is an intresting analysis of showing what suppliers interact with operators. We can see that Framatome and Electricte De France have a tight relationship having supplied them all 56 of their reactors. Doing more research, Electricite De France is a majority owner of Framatome. We can also see this relationship between  Joint Stock Company and Atomenergomash, where  Atomenergomash basically owns the operator. One example where the two aren't closely related in business is between General Electric as the supplier and Exelon the operator in the US.    
  - [Finds the relationships between reactor suppliers and operators in the USA](https://github.com/user-attachments/assets/d6a2dd33-68ef-4b85-a945-749df0dc4899):
 
    After analyzing the relationships between suppliers and operators just in the USA, it's clear that General Electric and Westinghouse Electric are at the top of the food chain in suppliers. Exelon remains the top operator in the USA.
  - [Find the suppliers contributing the most nuclear energy](https://github.com/user-attachments/assets/820df88a-4d65-4b72-bf4e-a638975d97c1):
 
    Looking at this briefly it's easy to see that Electricte De France remains the top operator with producing 61,370 MWE out of France and the next top operator is about half that at 27,727 MWE coming from Joint Stock Company out of Russia.  

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

### What is the operational performance and efficiency for current nuclear reactors around the world?
#### **4. What does the energy output look like for nuclear power?**
- SQL Query and Raw Data:
  - [The total MWE (Mega Watts Electrical) produced by nuclear energy worldwide](https://github.com/user-attachments/assets/ebb6a4a8-7486-403b-b39c-9e20f7d4e93a)
  - [Finds MWE produced per reactor units world wide](https://github.com/user-attachments/assets/59d32550-c936-4d94-8c6e-23f5ae2c54e8)
  - [Finds the MWE produced for a specefic coolant type](https://github.com/user-attachments/assets/5de369f2-5179-4093-acaa-b62e192b4f88)

- Interpretation and Use:
  - Energy was the focus for this queation where we focused on total output worldwide, coolants associated with energy output, and what each reactor unit could carry for total energy. This gives anyonbe a good understading of how much energy is output and optionally we can look at how much energy is required per country, region, and the world to figure out how many reactors we would need for these to be sustainable.

#### **5. What nuclear reactor models have in common?**
- SQL Query and Raw Data:
  - [Counts total reactor model types around the world](https://github.com/user-attachments/assets/8f1c454a-b8ab-430a-a3bf-f3861b734bf0)
  - [Finds the most common reactor model type around the world](https://github.com/user-attachments/assets/dc9203f5-666b-4406-a32e-95774d86363b)
  - [Finds the percentage of reactor model types worldwide](https://github.com/user-attachments/assets/56632f4d-75df-44a8-a9f3-0797b828badf)
  - [Shows the current top reactor models for each country](https://github.com/user-attachments/assets/90df012d-62a5-4aa8-bfcd-bf646da9d464)
  - [Shows total mwe output per reactor model](https://github.com/user-attachments/assets/97c0c7ee-c445-4946-ac5d-1a9ead7e9860)
  - [Shows the highest mwe output per reactor model](https://github.com/user-attachments/assets/ef27c862-be88-43b0-90b2-965cbd89f191)

- Visualization
  - Most common reactor models:
    <img width="2102" height="1000" alt="image" src="https://github.com/user-attachments/assets/2e77d0d6-6b5f-492b-993f-544ed7bd4143" />
   
  - Reactor models for each country :
    <img width="1200" height="1000" alt="Q8_2" src="https://github.com/user-attachments/assets/0ffb9dfb-fa3a-4a04-baf2-01d24270af5c" />

  - MWE output for combined reactor models and individual models:
    <img width="2400" height="800" alt="image" src="https://github.com/user-attachments/assets/10729dab-9127-4f1b-b866-cd1d46229e5b" />

- Interpretation and Use:
  - This insight is very useful for honing in on specefic reactor models to see which one's can carry out the most energy and what type it's associated with. It's clear to see that France "owns" the most reactor models in the world and China has the top performing individual reactor model. It can be taken further by developing relationships between reactor model, type, and output along with section 1 to find the most effiecent reactor type and draw conclusions there. This section just adds depth in the search for energy effiencey within the nuclear reactor sector to see if it's a viable energy source for the furture.
 
#### **6. How reliable are certain types of nuclear reactors?**
- SQL Query and Raw Data:
  - [Shows the total outage time in days for nuclear reactors](https://github.com/user-attachments/assets/092baec0-acac-45bc-98a1-5f126c91f331)
  - [Finds the least reliable reactor types](https://github.com/user-attachments/assets/6c227105-e855-413a-93b6-89c930837f96)
  - [Finds the percentage of reactor type outages](https://github.com/user-attachments/assets/4d755b65-5719-4180-a540-aa41a124cf43)

- Visualization
  - Most common reactor types outages:
    <img width="2208" height="600" alt="image" src="https://github.com/user-attachments/assets/4f11abb7-b4db-4f75-b613-96af3eef8f23" />

- Interpretation and Use:
  - We can dive deeper into effiency metrics to see which reactor types cause the most problems and need the most maintanence. Ideally we want that number to be as little as possible to maintain grid connection time for maximum energy consumption to provide to people. We can potentially draw conclusions with energy potential lost in the downtimes per type and see which type is the most effiencnt to keep funding and building because why would want to fund types that are known to have continious issues in run times.

### What is the historical development of nuclear reactors and how does it influence future energy sources?
#### **7. What does history tell us about nuclear reactors?**
- SQL Query and Raw Data:
  - [Shows the median construction time for all reactors](https://github.com/user-attachments/assets/02b5be9c-6168-47c8-8931-5685e7af23aa)
  - [Finds the median contruction time for reactors per country](https://github.com/user-attachments/assets/eda0714c-2239-43fe-8835-f1bed4927d56)
  - [Finds the median time from power generation to commercialability](https://github.com/user-attachments/assets/51112db7-9743-427a-816e-ff465f6522f5)
  - [Shows the current longest operational reactors](https://github.com/user-attachments/assets/d9a0e5de-b473-4ebe-8bff-77ef5bb61e24)
  - [Shows the current longest commercial reactors](https://github.com/user-attachments/assets/0fd49431-2160-4c6c-871e-39118a310e4a)
  - [Shows the median lifespan of reactor operation](https://github.com/user-attachments/assets/9f39a7d2-b489-4789-b6da-3b8c65686e02)
  - [Finds which years had the most grid connections](https://github.com/user-attachments/assets/fa091472-525c-494e-a93e-2665284c2e93)
  - [Shows which years had the most total connections](https://github.com/user-attachments/assets/e8245e5d-26cf-46aa-b2fb-428bdce06d9d)
  - [Finds the top reactor construction years](https://github.com/user-attachments/assets/48c21fd5-ad9b-4333-bab3-857ec2f0b2f4)
  - [Analyzes the operational reactors between 1954 and 1984](https://github.com/user-attachments/assets/50a00dab-e814-4802-bee4-e700aed9463d)
  - [Analyzes the operational reactors between 1984 and 2014](https://github.com/user-attachments/assets/73bce9a2-8d43-48a9-828b-0769eee84d5d)
  - [Shows the common reactor types between 2000 and 2010](https://github.com/user-attachments/assets/5b3d937f-9fef-451f-a342-070ec1273c6f)
  - [Shows the common reactor types between 2010 and 2020](https://github.com/user-attachments/assets/e3435c6f-e9c4-4434-a0f4-6e0e065836fe)
  - [Shows what reactor types were common in 2012](https://github.com/user-attachments/assets/3a2a7793-5289-4435-a606-331670b72a6b)
  - [Analyzed the United States' reactor constructions](https://github.com/user-attachments/assets/8873ad7d-4ad8-41e8-9c78-bbaf430f1987)
  - [Which decade saw the least connections](https://github.com/user-attachments/assets/e8dc7cf1-2297-4ee2-a490-75b745184ee5)
  - [Compares reactor superpowers of France and the United States continual operation](https://github.com/user-attachments/assets/6794a806-4095-41dc-9d5d-2c4935ca0380)
  - [Finds the average length of continual operation per country](https://github.com/user-attachments/assets/4d97b2f6-b1b8-4eb8-b91c-29076f7a301c)
  - [Finds the total continual operation worldwide](https://github.com/user-attachments/assets/10a82789-74e2-477e-895c-2496412333dc)
  - [Shows which years saw the highest change of nuclear reactor additions](https://github.com/user-attachments/assets/4d06d427-f952-42c6-947f-92751d50bb08)
  - [Shows each years percent change from the previous](https://github.com/user-attachments/assets/8e78a7ba-02a9-4bd4-95bf-9ecfdda06f9c)
  - [Finds which decade saw the most connections for a reactor type](https://github.com/user-attachments/assets/af3bee88-22c0-44a0-8bd9-25c5f0dad020)

- Visualization
  - Countries and their median contruction time:
    <img width="989" height="989" alt="image" src="https://github.com/user-attachments/assets/659c78b9-9f5c-49a7-bcbc-fd76785766d4" />

  - Percent change of nuclear reactor additions for each year since 1954:
    <img width="2779" height="1180" alt="q27" src="https://github.com/user-attachments/assets/412856b7-ce32-4567-8e80-9e18d888e7da" />

  - Construction starts yearly:
    <img width="1400" height="700" alt="Q15_3" src="https://github.com/user-attachments/assets/849aab46-f9a1-4321-9ce1-e25f8f788ad6" />

- Interpretation and Use:
  - This section gives a lot of information about the timeline for nuclear reactors and may give some insights to the projection to build new ones. I provided a lot of information that can be exclusive to certain types of questions a nuclear reactor analyst may have for either the past, present or future. This also includes country specefic information regarding timelines. This section is mainly to provide trends and insights to the future production of nucelar reactors. Some historical context as to why around 1980-1990 we saw a general increase of reactors can infered that it was primarily fueld by the cold war involving a increase in nucelar reactors for specefiically their waste materials to make nuclear weapons between Russia and the USA.

#### **8. What is the current status for nuclear power?**
- SQL Query and Raw Data:
  - [Finds out how many operational reactors are current and how many have shutdown in the past](https://github.com/user-attachments/assets/8c5fa796-5719-4c3b-9206-8362e97239de)
  - [Shows the distribution of shutdown and operational reactor types](https://github.com/user-attachments/assets/46386b0f-5f69-42d2-839c-0a42a3d2302a)
  - [Analyzes the percent of operational and shutdown reactor types](https://github.com/user-attachments/assets/6f57ed69-e1d9-4eb1-9658-d01e945bd3dd)
  - [Shows which countries have the most shutdown nuclear reactors](https://github.com/user-attachments/assets/3857a18a-8789-4d70-b821-4f94c0de315f)

- Visualilzations:
  - Operational vs Shutdown reactors count:
    <img width="1400" height="800" alt="Q19" src="https://github.com/user-attachments/assets/92f39192-c3dd-436c-9ae9-623427a02cce" />

  - Shutdown nuclear reactors count:
    <img width="1189" height="790" alt="image" src="https://github.com/user-attachments/assets/f6972ee3-954b-4154-a580-2a6b0689a7fd" />

- Interpretation and Use:
  
#### **9. Common fuels for nuclear power?**
- SQL Query and Raw Data:
  - [Shows the relationship between fuel types and reactor types](https://github.com/user-attachments/assets/2d2ea773-7ff0-4948-ac9e-9f7fb42b0f89)
  - [Shows the total count of each existing fuel types](https://github.com/user-attachments/assets/fa6f6b62-6e98-4f50-8bd0-d65aa6a36d5b)

- Visualizations:
  - All fuel types distribution
  <img width="990" height="590" alt="image" src="https://github.com/user-attachments/assets/817dbe94-e929-4e54-a2ad-97544e0e40a6" />

- Interpretation and Use:

## Conclusion:

### Complex SQL Skills That I Learned More About :
  - Window functions
  - Multi Step CTEs
  - Sub queries

### What I Learned From This Project:
  - SQL can be used in almost any field with the right data sets.
  - The wide variety of queries that can be used to find unique questions from large data sets in an instant.
  - How to extract data effiently using AI and distribute the data it into tables.
  - Making visualizations and limiting certain queires to give a snap shot.
  - That aggregation functions are great at finding totals and effiency related statistics while CTEs are great at finding percentages from a whole and percent growth statistics. 

### The Future:
  #### I hope to continue making SQL projects to subjects that intrest me so I can get a better grasp on this SQL and have fun with various topics. Making this project allowed me to get more comfortable with using SQL in everyday life. I hope to work on other projects that include: organic chemistry, real estate, retial, and hope to make a positive impact for the people around using data to our advantage.   

### Reources Utilized:
  - DBeaver
  - PostgreSQL
  - Git
  - GitHub
  - Nuclear Power Reactors In The World (IAEA, 2024)












