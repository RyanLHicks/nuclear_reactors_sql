# Nuclear Reactor SQL Project

## Introduction

#### **Background**
- Why I'm doing this: I want to practice and enhance my SQL skills while exploring the interesting landscape of nuclear reactors around the world. This will allow me to see the real-world applications and questions that SQL and visualization tools can answer that anyone may have about topics. 
- Why I'm interested in nuclear energy: I believe that understanding nuclear reactors now will allow me to be positioned greatly for the future search of clean and reliable energy. If I can comprehend the scale of nuclear reactors now, I hope to learn and apply further knowledge of chemistry to enhance energy sources for the future.   
- Why I'm interested in SQL: Using SQL will allow us to leverage mass amounts of important data to make intelligent decisions for personal, professional, and general interest topics such as nuclear energy, healthcare, technology, financial markets, and many other applications that will fuel our lives. Understanding these concepts now will set up an excellent future for myself and others to make quick interpretations about the past to enhance future innovation.
  
#### **Setup, Procedures and Data**

I am creating my own tables through data from the International Atomic Energy Association (IAEA) and will implement it in the SQL database called PostgreSQL. After setting this data up, I will use Dbeaver to carry out SQL queries that answer a wide variety of questions relating to nuclear reactors and energy. When these queries are finally carried out, I will export the raw data into CSV format and use an AI chatbot to quickly visualize the data using bar graphs, line charts, and scatter plots for quick interpretation. The main functions used during this project include multi-step CTEs, joins, sub queries, and window functions to be as specific as possible when dissecting this data and hope it has some use for the future. Each section contains the raw sql query/data, visualizations, main points, and data interpretation/extrapolation.

#### **Major Topics Addressed**
⚙️Reactor Demographics and Industry Leaders
⚡️Operational Performance and Efficiency
🔎 Historical Development Trends

#### **ERD and Tables**
- ERD
  
  <img width="632" height="671" alt="Screenshot 2025-08-26 143710" src="https://github.com/user-attachments/assets/8a500eec-3c04-470e-898b-f47b2e704f57" />

_You can crtl + click on each underlined link to open up a seperate tab for extra information_

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
  
  ## Questions
  ### 🧫 <ins>What are the major demographics and industry leaders for nuclear power since 1954?</ins>
  #### **🏭 What reactor types are most involved in nuclear energy**
- #### **📏 SQL Query and Raw Data:**
  - [Counts total type of reactors worldwide](https://github.com/user-attachments/assets/aedb2912-e5bb-4f7d-9684-75d586dc36f5):
  
    We can see here that Pressurized Water Reactors (PWR) are the most abundant with 298 and there is only one High Temperature Gas Cooled Reactor (HTGR) in operation.
  - [Each reactor type for each country](https://github.com/user-attachments/assets/dfd1b897-b28d-4b4d-8379-69ac4d1700e8):
    
    This data set shows us that the USA, China, and France have the most PWR's worldwide and the USA has the most Boiling Water Reactors (BWR), Canada has the most Pressurized Heavy Water Reactors (PHWR), Russia has the most Light Water Graphite Reactors (LWGR) and the only two Fast Breeder Reactors (FBR), the UK has the only 8 Gas Cooled Reactors (GCR), and China has the only High Temperature Gas Cooled Reactors (HTGR) as well.  
  - [CTE to find country reactor type percentage of all operational reactors per country](https://github.com/user-attachments/assets/bdd409f1-342e-48e7-a17a-79b62214fdb9):
    
    We can see that the USA has the highest share of BWRs and PWRs and the other countries distributions with a 75% and 19% share respectively.
  - [Finds the top producing reactor types in MWE](https://github.com/user-attachments/assets/b6cb9c77-b0df-4908-b04d-511f0df98a21):
    
    It's obvious that this query will show that PWR has the highest MWE output with 283,757 MWE because it's the most abundant and the lowest is HTGR of 150 MWE with only one in operation worldwide.
  - [Finds the percentage of top producing nuclear reactor types](https://github.com/user-attachments/assets/ef6dc24b-1f69-4ae9-801e-82f2651c242f):
    
    Expanding the previous query, PWR has a 77% share of total energy while the HTGR only has a .04% energy share.
  - [Searches for the top producing nuclear reactor types per country](https://github.com/user-attachments/assets/1766badb-39e2-432a-8679-5db3b6dc39db):
    
    Though the US has more PWRs in operation, France dominates the total output with 61,370 MWE for their PWRs. This is interesting to see, and France may have more efficient reactors in operation. The US however, dominates the BWR output with 32,709 MWE.
  - [Queries the total energy per reactor type](https://github.com/user-attachments/assets/373d5b7a-5162-4570-bb38-9c7b47fb2a8c):
    
    This query finds interesting statistics, showing that BWRs have the most efficient energy per unit even though PWRs output the most cumulatively with 1,050 MWE/BWR reactor and 952 MWE/PWR reactors. This can be used to potentially transition the future reactors for BWR but more research must be done on the financial side of things.
  - [Finds the top energy output reactor types for the USA](https://github.com/user-attachments/assets/2a8e2160-210b-404a-b9d0-dda5ac709d02):
    
    This query is just reiterating that the United States' focus on reactor types with BWRs and PWRs as the main sources. 
  - [Find the top energy output reactor types for top producing countries](https://github.com/user-attachments/assets/20e5b533-1286-4ded-8e89-858eeb0f196f):
    
    We are honing in at the top producing nuclear energy countries of USA, France, and China to investigate what reactor types they prioritize over others and their output for each. USA channels BWRs and PWRs, France likes PWRs only and China is in with PHWRs, PWRs, and HTGRs
    
- #### **🧮 Visualization**
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

- #### **💡 Main Points:**
1. PWRs are the most abundant and outputs the most energy worldwide.
2. USA leads the march in total reactors and PWRs, but France has the most PWR energy output.
3. BWRs are the most efficient.  

- #### **🔑 Interpretation and Use:**
    - This section focused on the reactor types and was incredibly insightful to which reactor types are preferred around the world and country. Pressurized water reactors are the top choice for a lot of countries and have the most output by a large margin. Now we can investigate that further as to why, is it cost effective, safe, or efficient at using resources for energy? We can also ask, why are other countries developing these other non-traditional reactor types? Finding out which reactor types are most popular is a great first step into discovering the nuclear energy landscape.
    
#### **2. Who are the reactor suppliers and operators contributing the most?**
- #### **📏 SQL Query and Raw Data:**
  - [Finds the top nuclear reactor operators](https://github.com/user-attachments/assets/47938609-9f11-4b91-9d8c-6d191ba76d2d):
 
    Électricité De France is the top operator worldwide with 56 current operational reactors.
  - [CTE to find the percentage of operator share of the total nuclear reactor market](https://github.com/user-attachments/assets/1b05c702-6aeb-4cc6-8537-515f27b9e389):

    The dominance that Électricité De France has around the world, owning 13.75% of total reactors. 
  - [Finds the top nuclear reactor suppliers](https://github.com/user-attachments/assets/9f706c23-fac5-4314-8351-4e2d5698505f):
 
    Framatome and Westinghouse Electric Corp. are the top suppliers around the world, supplying 65 and 64 total reactors around the world.
  - [CTE to find the percentage of supplier share of the total nuclear reactor market](https://github.com/user-attachments/assets/481e7934-81a5-4daa-9e0f-dcc7712524a8):
 
    The dominance that Framatome and Westinghouse Electric Corp has around the world, supplying 15.97% and 15.72% of total reactors. 
  - [Finds top suppliers for nuclear reactor type](https://github.com/user-attachments/assets/a035b9f2-13da-4697-84d7-5d47d5bfc120):
 
    The suppliers are further broken down into their reactor type where Framatome and Westinghouse supply all PWRs. By analyzing this with the supplier list, we can see that most suppliers only produce one reactor type, however, Atomenergomash supplies FBRs, PWRs and LWGRs. 
  - [Finds top operators for nuclear reactor type](https://github.com/user-attachments/assets/029c807f-b098-4481-94d0-b6297517234a):
 
    This does the same analysis for reactor type but for the operator side of things and tells a different story of operators being variable to one reactor type. The operators that deviate are the Joint Stock Company operates, FBRs,  PWRs and LWGRs, Korea Hydro and Nuclear Power Cooperating PWRs and PHWRs, CNNC Nuclear Operation Management Company that operate PHWRs and PWRs, EDF energy operates GCRs and PWRs, Nuclear Power Corporation of India operates PHWRs and PWRs. Energy Nuclear Operations, Exelon, First Energy Nuclear, Northen States Power, Progress Energy, PSEG Nuclear, Southern Nuclear, Tennessee Valley Authority, Teollisuuden Voima OYJ all share a mix of BWRs and PWRs.
  - [Finds the relationships between reactor suppliers and operators](https://github.com/user-attachments/assets/8dbd4a81-8df7-4957-9d4c-8efa9c331a84):
 
    This is an interesting analysis showing what suppliers interact with operators. We can see that Framatome and Électricité De France have a tight relationship having supplied them all 56 of their reactors. Doing more research, Électricité De France is a majority owner of Framatome. We can also see this relationship between Joint Stock Company and Atomenergomash, where Atomenergomash owns their operator. One example where the two aren't closely related in business is General Electric as the supplier and Exelon the operator in the US.    
  - [Finds the relationships between reactor suppliers and operators in the USA](https://github.com/user-attachments/assets/d6a2dd33-68ef-4b85-a945-749df0dc4899):
 
    After analyzing the relationships between suppliers and operators just in the USA, it's clear that General Electric and Westinghouse Electric are at the top of the food chain in suppliers. Exelon remains the top operator in the USA.
  - [Find the suppliers contributing the most nuclear energy](https://github.com/user-attachments/assets/820df88a-4d65-4b72-bf4e-a638975d97c1):
 
    Looking at this briefly, it's easy to see that Électricité De France remains the top operator with producing 61,370 MWE out of France and the next top operator is about half that at 27,727 MWE coming from Joint Stock Company out of Russia.  

- #### **🧮 Visualization**
  - Nuclear reactors by operator:
    <img width="2537" height="1267" alt="image" src="https://github.com/user-attachments/assets/e8f4b529-d5a6-49ae-a28f-ddd5dbcc12bb" />
    
  - Nuclear reactors by supplier:
    <img width="2516" height="1139" alt="image" src="https://github.com/user-attachments/assets/47bcb065-82e5-45dd-8138-43bbbf060581" />

  - Nuclear reactors by supplier and operator relationships
   <img width="3159" height="1180" alt="image" src="https://github.com/user-attachments/assets/80698c40-2539-41f4-ac67-6be9c14510b5" />

- #### **💡 Main Points:**
1. Électricité De France is a champion nuclear operator.
2. Framatome and Westinghouse Electric Corp. are the heavyweights for reactor supply.
3. Many suppliers usually stick to one reactor type, while many operators mix and match reactor types.

- #### **🔑 Interpretation and Use:**
  - This section focused on the supplier and operator data. This is a good section for potential investors into nuclear reactors to get a general idea of who owns majority of the reactors and supplies them as well. This can potentially expand into finding the financials into reactor data per supplier and operator but for now it's good starting point for general data. We can ask questions like; how would we compete with established operators and suppliers? Why do operators and suppliers use specific materials, is it based on their location and material availability? How do certain supplier-operator relationships work? This section is essential to understand the business side of things relating to nuclear reactors.

#### **3. What countries are most involved with nuclear energy?**
-  #### **📏 SQL Query and Raw Data:**
  - [Counts total reactors per country and percent dominance](https://github.com/user-attachments/assets/103206b6-51dc-444c-be6d-fa03019baf80):
 
    The USA leads all operational reactors with 89 and that equates to 21.8% share overall, and the next top country is France with 56 and a 13.7% total share.
  - [Finds the reactor type diversity by country](https://github.com/user-attachments/assets/99f94f98-14d2-4113-bbc6-2de49605579b):
 
    China and Russia are the most diversified countries for reactor types with 3 different for each.
  - [Finds which countries are supplying the most energy](https://github.com/user-attachments/assets/6178def2-4d42-4711-b0b7-05376cd01d4b):
 
    USA takes the lead with 90,781 total output in MWE.
  - [Shows the percent dominance in energy by country](https://github.com/user-attachments/assets/e33115e3-7ed0-403f-959c-c27d2a043e42)
 
    The query expands the previous query by extrapolating the energy percent share and the USA has a 24.9% total share of total nuclear energy worldwide.
  - [Shows total mwe output per countries reactors](https://github.com/user-attachments/assets/bf55fe72-7c47-49aa-ba8c-c3ac886975ad):
 
  We can dive deeper into the energy produced by country by dividing the energy output for each country by their total reactors. The top three nuclear energy producing countries were used and France has 1,095 MWE per reactor, the USA has 1,020 MWE per reactor, and China is 966 MWE per reactor. This ultimately shows how efficient each country is per reactor.
  
- #### **🧮 Visualization**
  - Total reactors for each country:
    <img width="1000" height="1400" alt="Q4" src="https://github.com/user-attachments/assets/0eb816a1-442e-43f7-ad83-01ef02f042bf" />
   
  - Counts reactor type diversity:
    <img width="1200" height="600" alt="Q7png" src="https://github.com/user-attachments/assets/1d306a63-ac36-462f-b6e4-b9401e8dacca" />

- #### **💡 Main Points:**
1. The USA has the most operational reactors and total energy output.
2. China and Russia lead the way for unique reactor types and experimentation.
3. Nuclear reactor powerhouses include: United States, France, and China.
   
- #### **🔑 Interpretation and Use:**
  - We found out the leverage each country has in nuclear energy. This is important for understanding which countries value clean energy the most and also may indicate which countries require the most energy. This can be further expanded into finding out which countries in the future may invest more into this energy type and if a nuclear engineer saw this they may think that the United States, China, and France are the best places for job security. This can potentially bring jobs to various countries and increase quality of living for the citizens. 

### 🧫 <ins>What is the operational performance and efficiency for current nuclear reactors around the world?</ins>
#### **4. What does the energy output look like for nuclear power?**
-  #### **📏 SQL Query and Raw Data:**
  - [The total MWE (Mega Watts Electrical) produced by nuclear energy worldwide](https://github.com/user-attachments/assets/ebb6a4a8-7486-403b-b39c-9e20f7d4e93a):
 
    Total nuclear energy produced worldwide is 364,640 MWE
  - [Finds MWE produced per reactor units world wide](https://github.com/user-attachments/assets/59d32550-c936-4d94-8c6e-23f5ae2c54e8)

    Nuclear reactor energy generation per model is 895 MWE. Dividing net reactor output / net reactors 
  - [Finds the MWE produced for a specefic coolant type](https://github.com/user-attachments/assets/5de369f2-5179-4093-acaa-b62e192b4f88)
 
    Most energy producing coolant is using light water coolant.

- #### **💡 Main Points:**
1. Nuclear reactor generation per reactor is 895 MWE.

- #### **🔑 Interpretation and Use:**
  - Energy was the focus for this question where we focused on total output worldwide, coolants associated with energy output, and what each reactor unit could carry for total energy. This gives anyone a good understanding of how much energy is output and optionally we can look at how much energy is required per country, region, and the world to figure out how many reactors we would need for these to be sustainable. We can expand this by asking; What is the energy requirement average for each country and how is that compared to the total generation for nuclear reactors? By using the reactor generation per model, how many nuclear reactors would we need to supply a region, country, or the world? 

#### **5. What nuclear reactor models have in common?**
-  #### **📏 SQL Query and Raw Data:**
  - [Counts total reactor model types around the world](https://github.com/user-attachments/assets/8f1c454a-b8ab-430a-a3bf-f3861b734bf0)

    There are 83 total unique reactor models supplied globally.
  - [Finds the most common reactor model type around the world](https://github.com/user-attachments/assets/dc9203f5-666b-4406-a32e-95774d86363b):

    The VVER-V320 is the most supplied model with 25 in current operation. We also see that it is a PWR which is the most common reactor type.
  - [Finds the percentage of reactor model types worldwide](https://github.com/user-attachments/assets/56632f4d-75df-44a8-a9f3-0797b828badf)
 
    When seeing that the VVER-V320 is the most popular we can find that the percentage is equal to 30% of total models.
  - [Shows the current top reactor models for each country](https://github.com/user-attachments/assets/90df012d-62a5-4aa8-bfcd-bf646da9d464)
 
    The P4 REP 1300 is the most exclusive to an individual country which is France. 
  - [Shows total mwe output per reactor model](https://github.com/user-attachments/assets/97c0c7ee-c445-4946-ac5d-1a9ead7e9860)

    Furthering the research in model types, the P4 REP 1300 has the highest of 26,370 MWE and the VVER-V320 comes in second with 24,080 MWE even though it is the most popular reactor model worldwide. 
  - [Shows the highest mwe output per reactor name](https://github.com/user-attachments/assets/ef27c862-be88-43b0-90b2-965cbd89f191)

    The TAISHAN-1 and TAISHAN-2 coming from China, output the most MWE at 1,660.
     
- #### **🧮 Visualization**
  - Most common reactor models:
    <img width="2102" height="1000" alt="image" src="https://github.com/user-attachments/assets/2e77d0d6-6b5f-492b-993f-544ed7bd4143" />
   
  - Reactor models for each country :
    <img width="1200" height="1000" alt="Q8_2" src="https://github.com/user-attachments/assets/0ffb9dfb-fa3a-4a04-baf2-01d24270af5c" />

  - MWE output for combined reactor models and individual models:
    <img width="2400" height="800" alt="image" src="https://github.com/user-attachments/assets/10729dab-9127-4f1b-b866-cd1d46229e5b" />

- #### **💡 Main Points:**
1. There are 83 unique model types worldwide
2. The VVER-V320 is the most popular model type
3. The P4 REP 1300 has the highest energy yield even though the VVER-V320 is the most popular.

- #### **🔑 Interpretation and Use:**
  - This insight is very useful for honing in on specific reactor models to see which one can carry out the most energy and what type it's associated with. It's clear to see that France "owns" the most reactor models in the world and China has the top performing individual reactor model. It can be taken further by developing relationships between reactor model, type, and output along with section 1 to find the most efficient reactor type and draw conclusions there. This section just adds depth in the search for energy efficiency within the nuclear reactor sector to see if it's a viable energy source for the future. I would ask questions like: What makes the P4 REP 1300 so powerful? How can I develop these models into more efficient models for the future?
     
### 🧫 <ins>What is the historical development of nuclear reactors and how does it influence future energy sources?</ins>
#### **6. What does history tell us about nuclear reactors?**
-  #### **📏 SQL Query and Raw Data:**
  - [Shows the median construction time for all reactors](https://github.com/user-attachments/assets/02b5be9c-6168-47c8-8931-5685e7af23aa)

    On average it takes about 6 years from start to finish to build a reactor.
  - [Finds the median contruction time for reactors per country](https://github.com/user-attachments/assets/eda0714c-2239-43fe-8835-f1bed4927d56)
 
    The Netherlands takes the shortest amount to build their reactors with a time of 3.7 years, beating the global average by 2.3 years. 
  - [Finds the median time from power generation to commercialability](https://github.com/user-attachments/assets/51112db7-9743-427a-816e-ff465f6522f5)
 
    The time the nuclear reactor can produce energy to commercial ability is about 5 years. Using this information with the median construction time we can see that the average time from start to finish for commercial generation is 11 years from the first date of construction.
  - [Shows the current longest operational reactors](https://github.com/user-attachments/assets/d9a0e5de-b473-4ebe-8bff-77ef5bb61e24)
 
    BEZNAU-1 from Switzerland is the longest lasting reactor being built on July 17th 1969.
  - [Shows the current longest commercial reactors](https://github.com/user-attachments/assets/0fd49431-2160-4c6c-871e-39118a310e4a)
 
    BEZNAU-1 from Switzerland is the longest lasting commercial reactor after availability on December 24th 1969.
  - [Shows the median lifespan of reactor operation](https://github.com/user-attachments/assets/9f39a7d2-b489-4789-b6da-3b8c65686e02)
 
    The median operation lifespan for nuclear reactors in the past has been 31.7 years.
  - [Finds which years had the most grid connections](https://github.com/user-attachments/assets/fa091472-525c-494e-a93e-2665284c2e93)

    I was able to find that in 1984 and 1985 they were at the peak with 33 connections for each year. I believe this rapid influx of connections was due to the cold war incentive of stockpiling uranium for nuclear warheads.
  - [Shows which years had the most total connections](https://github.com/user-attachments/assets/e8245e5d-26cf-46aa-b2fb-428bdce06d9d)
 
    In 2005 we had a peak of 440 total operational reactors and since then it has steadily decreased, there are either shutdowns or there are not being any more nuclear reactor constructions.
  - [Finds the top reactor construction years](https://github.com/user-attachments/assets/48c21fd5-ad9b-4333-bab3-857ec2f0b2f4)
 
    With this query we can see that in 1976 we saw a peak of 43 reactor constructions and in 1995 there were 0 constructions worldwide.
  - [Analyzes the operational reactors between 1954 and 1984](https://github.com/user-attachments/assets/50a00dab-e814-4802-bee4-e700aed9463d)
 
    After running this query, I found that between 1954 and 1984 there were 143 operational reactors in 3 decades. I wanted to analyze these decades to see if there was a connection between the cold war and operational nuclear reactors.
  - [Analyzes the operational reactors between 1984 and 2014](https://github.com/user-attachments/assets/73bce9a2-8d43-48a9-828b-0769eee84d5d)
 
    After running a similar query, the previous I found that between 1984 and 2014 there were 223 operational reactors in 3 decades.
  - [Shows the common reactor types between 2000 and 2010](https://github.com/user-attachments/assets/5b3d937f-9fef-451f-a342-070ec1273c6f)
 
    I found out that the common types of reactors in operation in this period were PWRs and PHWRs. I wanted to see if there were any significant technological shifts in nuclear reactor types between 2000-2010 and 2010-2020.
  - [Shows the common reactor types between 2010 and 2020](https://github.com/user-attachments/assets/e3435c6f-e9c4-4434-a0f4-6e0e065836fe):
 
    I found out that the common types of reactors in operation in this period was mainly PWRs with a mix of FBRs and PHWRs. It seems during this decade there was a slight introduction to new reactor types.
  - [Shows what reactor types were common in 2012](https://github.com/user-attachments/assets/3a2a7793-5289-4435-a606-331670b72a6b)
 
    Shows that 3 PWR reactors were in operation for 2012. 
  - [Analyzed the United States' reactor constructions](https://github.com/user-attachments/assets/8873ad7d-4ad8-41e8-9c78-bbaf430f1987)
 
    We can see that 1968 was a hot year for nuclear reactors, starting 27 in total.
  - [Which decade saw the least connections](https://github.com/user-attachments/assets/e8dc7cf1-2297-4ee2-a490-75b745184ee5)
 
    Seen that in 1950 there were only 11 total connections, this is during the start of nuclear reactor energy, so this makes sense.
  - [Compares reactor superpowers of France and the United States continual operation](https://github.com/user-attachments/assets/6794a806-4095-41dc-9d5d-2c4935ca0380)
 
    I wanted to compare the two most generative countries which are the USA and France to see which one has the longest average operational lifespan and we can see that the USA beats France by 4 years, with 44 and 40 years in average operation respectively.  
  - [Finds the average length of continual operation per country](https://github.com/user-attachments/assets/4d97b2f6-b1b8-4eb8-b91c-29076f7a301c)
 
    I also wanted to see how this was broken down for each country and the Netherlands has the highest operational average lifespan of 52 years. It's also interesting to note that the Netherlands also was the shortest time to complete construction for their nuclear reactors. 
  - [Finds the total continual operation worldwide](https://github.com/user-attachments/assets/10a82789-74e2-477e-895c-2496412333dc)
 
    This operation took the worldwide reactors' lifespan into account which was 33 years of average operation.
  - [Shows which years saw the highest change of nuclear reactor additions](https://github.com/user-attachments/assets/4d06d427-f952-42c6-947f-92751d50bb08)
 
    This complex operation found that in 1980 we saw a total of 13 new reactor additions which is the most historically.
  
  - [Finds which decade saw the most connections for a reactor type](https://github.com/user-attachments/assets/af3bee88-22c0-44a0-8bd9-25c5f0dad020)
 
    After running this, we can see that the highest grossing nuclear reactor addition decade was 1980, with total 127 total additions.

- #### **🧮Visualization**
  - Countries and their median contruction time:
    <img width="989" height="989" alt="image" src="https://github.com/user-attachments/assets/659c78b9-9f5c-49a7-bcbc-fd76785766d4" />

  - Percent change of nuclear reactor additions for each year since 1954:
    <img width="2779" height="1180" alt="q27" src="https://github.com/user-attachments/assets/412856b7-ce32-4567-8e80-9e18d888e7da" />

  - Construction starts yearly:
    <img width="1400" height="700" alt="Q15_3" src="https://github.com/user-attachments/assets/849aab46-f9a1-4321-9ce1-e25f8f788ad6" />

- #### **💡 Main Points:**
1. The Netherlands has the shortest average construction time and longest average operational lifespan for nuclear reactors.
2. 1984 and 1985 saw the highest grid connections for reactors worldwide.
3. Nuclear reactors usually last around 32 years based on historical data.

- #### **🔑 Interpretation and Use:**
  - This section gives a lot of information about the timeline for nuclear reactors and may give some insights into the projection to build new ones. I provided a lot of information that can be exclusive to certain types of questions a nuclear reactor analyst may have for either the past, present or future. This also includes country specific information regarding timelines. This section is mainly to provide trends and insights into the future production of nuclear reactors. Some historical contexts as to why around 1980-1990 we saw a general increase of reactors can inferred that it was primarily fueled by the cold war involving an increase in nuclear reactors for specifically their waste materials to make nuclear weapons between Russia and the USA. We can ask further: Why do some countries have long-lasting nuclear reactors? Is this because of better funding? Less regulation? How does regulation play into each country’s reactor lifespan? What is the most common reason for nuclear reactors to last? Why did 1984 and 1985 see so many connections vs other years?

#### **7. What is the current status for nuclear power?**
-  #### **📏 SQL Query and Raw Data:**
  - [Finds out how many operational reactors are current and how many have shutdown in the past](https://github.com/user-attachments/assets/8c5fa796-5719-4c3b-9206-8362e97239de)
 
    We can see that there are 412 total operational reactors and 209 shutdown reactors worldwide.
  - [Shows the distribution of shutdown and operational reactor types](https://github.com/user-attachments/assets/46386b0f-5f69-42d2-839c-0a42a3d2302a)
 
    We can see that there are more PWRs operational and shutdown than any other type.
  - [Analyzes the percent of operational and shutdown reactor types](https://github.com/user-attachments/assets/6f57ed69-e1d9-4eb1-9658-d01e945bd3dd)
 
    This shows that Heavy-Water Moderated, Boiling Light-Water Cooled Reactor (HWLWR), Heavy-Water Moderated, Gas Cooled Reactor (HWGCR), Steam Generating Heavy-Water Reactor (SGHWR), and Other (X) reactors are permanetly shutdown and non are in current operation. The highest shutdown operational type is GCRs which have a 84% shutdown rate.
  - [Shows which countries have the most shutdown nuclear reactors](https://github.com/user-attachments/assets/3857a18a-8789-4d70-b821-4f94c0de315f)
 
    We can see the country with the most shutdown reactors and the USA leads that statistic with 41% of reactors shutdown permanetaly. 

- #### **🧮 Visualization**
  - Operational vs Shutdown reactors count:
    <img width="1400" height="800" alt="Q19" src="https://github.com/user-attachments/assets/92f39192-c3dd-436c-9ae9-623427a02cce" />

  - Shutdown nuclear reactors count:
    <img width="1189" height="790" alt="image" src="https://github.com/user-attachments/assets/f6972ee3-954b-4154-a580-2a6b0689a7fd" />
    
- #### **💡 Main Points:**
1. GCRs have a large 84% shutdown rate
2. 209 reactors have been shutdown in total

- #### **🔑 Interpretation and Use:**
This gives insight into the history of nuclear reactors and how many have been shut down in total. We can use this information to understand how likely a reactor is going to be shut down and if it's feasible to take on the risk to develop a certain type of reactor. I would ask what is the main reason to why these reactors are being shutdown? If I were developing a reactor, what are the steps to avoid being shutdown? Why are GCRs shutdown often?

#### **8. Common fuels for nuclear power?**
-  #### **📏 SQL Query and Raw Data:**
  - [Shows the relationship between fuel types and reactor types](https://github.com/user-attachments/assets/2d2ea773-7ff0-4948-ac9e-9f7fb42b0f89)
 
    This just shows the cross relationship many fuels have with the reactor types. We can see that Enriched Uranium Oxide is the most common and interacts with LWGRs, GCRs, PWRs, and BWRs.
  - [Shows the total count of each existing fuel types](https://github.com/user-attachments/assets/fa6f6b62-6e98-4f50-8bd0-d65aa6a36d5b)
 
    To no suprise UO2 is assosiated with the most reactors because it's used in PWRs, the most common reactor type.

- #### **🧮 Visualization**
  - All fuel types distribution
  <img width="990" height="590" alt="image" src="https://github.com/user-attachments/assets/817dbe94-e929-4e54-a2ad-97544e0e40a6" />

- #### **🔑 Interpretation and Use:**
We can see through this analysis the common types of coolants associated with nuclear reactors and helps suppliers and operators understand what their main sources of coolant is for their reactors. I would ask further: Are non-PWR coolants more complicated than other coolants? Is there a reason why certain coolants are used vs. others for these reactors?

## Conclusion:

### Complex SQL Skills That I Learned More About :
  - Window functions
  - Multi Step CTEs
  - Sub queries

### ⚙️ What I Learned From This Project:
  - SQL can be used in almost any field with the right data sets.
  - The wide variety of queries that can be used to find unique questions from large data sets in an instant.
  - How to extract data effiently using AI and distribute the data it into tables.
  - Making visualizations and limiting certain queires to give a snap shot.
  - That aggregation functions are great at finding totals and effiency related statistics while CTEs are great at finding percentages from a whole and percent growth statistics. 

### 🔭 The Future:
  #### I hope to continue making SQL projects to subjects that intrest me so I can get a better grasp on this SQL and have fun with various topics. Making this project allowed me to get more comfortable with using SQL in everyday life. I hope to work on other projects that include: organic chemistry, real estate, retial, and hope to make a positive impact for the people around using data to our advantage.   

### 🧰 Reources Utilized:
  - DBeaver
  - PostgreSQL
  - Git
  - GitHub
  - VS Code
  - Nuclear Power Reactors In The World (IAEA, 2024)












