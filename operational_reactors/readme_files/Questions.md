### 1. Reactor Demographics and Industry Leaders

This topic focuses on the overall landscape of the global nuclear fleet—who the key players are, what types of reactors exist, and where they are located.

- What is the most common reactor type for each country? Which country has the most reactors? 
	- Percentage dominance
    
- Which reactor company has the most nuclear power plants currently operational
	- Percentage dominance
    
- Which reactor supplier has the most operational reactors currently?
	- Percentage dominance

- Which country has the most reactors currently operational?
	- Percentage dominance
    
- Rank the net capacity in MWE for each reactor?
	- Which country outputs the most MWE
	- Which type outputs the most MWE worldwide
	- Percentage Dominance
	
- Which reactor type outputs the most energy for the USA?
	- How are they compared to France and China?
	- 
- **Which countries have the most diverse portfolio of reactor types?** _(Hint: Use `GROUP BY country` and `COUNT(DISTINCT reactor_type)` to find the number of unique reactor types per country.)_
    
- **What is the most common specific reactor model (e.g., 'VVER V-491', 'AP-1000') in the world?** _(Hint: A simple `GROUP BY model` and `COUNT(*)` on your `operational_reactors` table.)_
    
- **Which NSSS suppliers are most commonly paired with which reactor operators?** _(Hint: Join `operational_reactors`, `operators`, and `nsss_suppliers`, then group by operator and supplier to count the pairings.)_

---

### 2. Operational Performance and Efficiency

This topic addresses how well the reactors perform. These questions are about their power output, reliability, and the efficiency of the construction process.

- Which reactor type has the most outage hours?
    
- What is the oldest and most power generative reactor?
    
- What was the average construction time from start to finish for a nuclear reactor?
- What is the average operational lifespan of a decommissioned reactor? _(Hint: This is a challenging but interesting question. You would need to join `decommissioned_reactors` with `operational_reactors` (or another source) to find their original grid connection dates and then calculate the average difference.)_
    
- What is the most common reason for permanently shutting down a reactor?**
    
    _(Hint: Join `decommissioned_reactors` with `shutdown_reasons` and use `COUNT(*)` grouped by the reason description.)_
    
- **Is there a correlation between reactor type and outage hours?**
    

---

### 3. Historical Development Trends

This topic looks at the evolution of the nuclear industry over time. These questions focus on specific years or time periods to understand construction booms, popular technologies, and overall growth.

- What year saw the most grid connections and commercial operation?
    
- What reactor types were most common for the year 2012?
    
- Which are the most popular reactor types from 2020-2023?
    
- What time period saw the most/least connections?
    
- What year for the U.S saw the most construction projects?
    
- Are we truly committing to green and reliable energy as locally, nationally and globally?
    
- Are we increasing nuclear reactors for energy today or was it more important for global conflicts such as WWII and The Cold War (1954-1991)?
- Was there a "nuclear winter"? Which decade saw the fewest new grid connections?
    
    _(Hint: `GROUP BY` decade on the `summary_year` in your `annual_global_summary` table and find the `SUM(grid_connections_units)`.)_
    
- **How has the preferred reactor type for new constructions changed over time?** _(Hint: Compare the counts of reactor types for reactors with a `grid_connection_date` in the 1970s versus those connected in the 2010s.)_
    
- **What is the average age of currently operational reactors in the USA vs. France?** _(Hint: Filter by country, and use `AVG()` on the difference between the current date and the `grid_connection_date`.)_
    


**## Aggregation and Grouping (GROUP BY, COUNT, SUM, AVG)**

These commands are used for questions about totals, averages, or finding the "most common" items within groups (like countries or reactor types).



What is the most common reactor type for each country? (Requires GROUP BY country, then COUNT(reactor\_type))



Which reactor type has the most outage hours? (Requires GROUP BY reactor\_type, then SUM(outage\_hours))



Which reactor company has the most nuclear power plants currently operational? (Requires GROUP BY operator, then COUNT(reactor\_name))



What year saw the most grid connections and commercial operation? (Requires GROUP BY year, then COUNT(reactors))



Which reactor supplier has the most operational reactors currently? (Requires GROUP BY supplier, then COUNT(reactor\_name))



Which country has the most reactors currently operational? (Requires GROUP BY country, then COUNT(reactor\_name))



What was the average construction time from start to finish for a nuclear reactor? (Requires the AVG() function on the difference between two dates)



**## Sorting and Ranking (ORDER BY, LIMIT, RANK)**

These commands are used for questions that involve ranking, or finding the single "most," "least," "oldest," or "newest" item from a list.



Rank the net capacity in MWE for each reactor? (Requires ORDER BY net\_capacity\_mwe DESC)



What is the oldest and most power generative reactor? (Requires ORDER BY grid\_connection\_date ASC LIMIT 1 for oldest, and ORDER BY net\_capacity\_mwe DESC LIMIT 1 for most powerful)



What time period saw the most/least connections? (Requires grouping by a time period, like year or decade, and then using ORDER BY to find the highest and lowest values)



**## Filtering (WHERE)**

The WHERE clause is used to narrow down your data to answer questions about a specific subset, like a particular country or time frame. Note that you will use WHERE in almost all your queries, but for these questions, it's the primary operation.



What reactor types were most common for the year 2012? (Requires WHERE to filter for reactors operational in 2012, followed by grouping and counting)



Which are the most popular reactor types from 2020-2023? (Requires WHERE to filter for reactors connected between these dates, followed by grouping and counting)



What year for the U.S saw the most construction projects? (Requires WHERE country = 'USA', followed by grouping by year and counting)


- **For each country, which operator runs the most reactors, and what is the total net capacity for that specific top operator in that country?** _(Hint: This is a multi-step problem. A CTE is perfect for first finding the top operator in each country, and then joining that result back to your main table to calculate their total capacity.)_
    
- **Identify the years where the number of new grid connections was higher than the previous year. Show the year and the increase in connections.** _(Hint: Use a CTE to create a table of annual grid connections from your `annual_global_summary` table. Then, in the main query, join this CTE to itself on `year` and `year - 1` to compare consecutive years.)_
    

---

### ## Subqueries

Subqueries are queries nested inside another query. They are ideal for filtering data based on an aggregated value (like an average or a count).

- **Which operational reactors have a net capacity greater than the average capacity of all reactors in their own country?** _(Hint: You'll need a "correlated subquery." The `WHERE` clause of your main query will contain a subquery that calculates the `AVG(net_capacity_mwe)` for each reactor's specific country.)_
    
- **List all NSSS suppliers who exclusively supply only one type of reactor (e.g., a company that only makes PWRs and no other types).** _(Hint: First, write a subquery that finds the `supplier_id`s of suppliers who have a `COUNT(DISTINCT reactor_type)` of 1. Then, in your main query, select from your `nsss_suppliers` table `WHERE` the ID is `IN` the list generated by your subquery.)_
    

---

### ## Window Functions (`RANK`, `LEAD`, `LAG`)

Window functions perform calculations across a set of rows related to the current row. They are perfect for ranking and comparing rows within a specific group or "partition."

- **Within each country, what is the rank of each reactor based on its net capacity?** _(Hint: Use `RANK() OVER (PARTITION BY country ORDER BY net_capacity_mwe DESC)`. This will restart the ranking for each new country.)_
    
- **For each reactor, show its net capacity and the capacity of the _next most powerful_ reactor within the same country.** _(Hint: Use the `LAG()` window function. `LAG(net_capacity_mwe, 1) OVER (PARTITION BY country ORDER BY net_capacity_mwe DESC)` will fetch the value from the previous row after the data has been sorted by capacity within each country.)_
    
- **What is the rolling 3-year average of new global grid connections?** _(Hint: Use an aggregate function as a window function. `AVG(grid_connections_units) OVER (ORDER BY summary_year ROWS BETWEEN 2 PRECEDING AND CURRENT ROW)` will calculate the average of the current year and the two previous years.)_
    

---

### ## Percentile Numbers (`NTILE`, `PERCENTILE_CONT`)

These functions help you understand the distribution of your data by dividing it into buckets or finding a specific percentile value.

- **Categorize all operational reactors globally into capacity quartiles (e.g., Top 25%, 2nd 25%, etc.).** _(Hint: The `NTILE(4) OVER (ORDER BY net_capacity_mwe DESC)` window function is designed for exactly this. It will assign a number from 1 to 4 to each reactor.)_
    
- **What is the median (50th percentile) net capacity of all operational reactors in the world? How does this compare to the median capacity of reactors built in the 1970s versus those built since 2010?** _(Hint: Use the `PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY net_capacity_mwe)` aggregate function. You'll need a `WHERE` clause to filter by the `grid_connection_date` for the different time periods.)_














