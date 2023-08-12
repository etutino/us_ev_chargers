# us_ev_chargers
This project uses SQL and Tableau to understand the current state of US EV charging for each US state. 

1. I acquired multiple data sources:
   * <a href="https://www.kaggle.com/datasets/salvatoresaia/ev-charging-stations-us">Kaggle: EV Charging Stations - US</a>
   * <a href="https://www.iea.org/data-and-statistics/data-tools/global-ev-data-explorer">IEA: 2023 Global EV Outlook</a>
   * <a href="https://www.census.gov/data/tables/time-series/demo/popest/2020s-state-total.html">US Census Bureau: State Population Totals and Components of Change: 2020-2022</a>
   * <a href="https://www.fhwa.dot.gov/policyinformation/statistics/2021/">US DOT: Highway Statistics</a>
2. I created tables using SQL (pgAdmin) and added the data above into the tables. I used a few queries to filter and join the data I needed for visualization.
3. I added the final data into Tableau and created a dashboard to show the current state of EV charging in the US, including data by state: https://public.tableau.com/app/profile/elizabeth.tutino/viz/EVChargingDatabyState/Dashboard1#1 
