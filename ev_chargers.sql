--Creating the table for IEA 2023 Global EV Outlook
CREATE TABLE ev_data (
	region varchar(100), 
	category varchar(100),
	parameter varchar(100),
	mode varchar(100), 
	powertrain	varchar(100),
	year varchar(4),
	unit varchar(100),
	value numeric
);
--Data for ev_data was inserted from the csv file using the pgAdmin import function

--Creating another table for EV charging station data by state
CREATE TABLE ev_chargers (
	station_name varchar(200),
	street_address varchar(200), 
	city varchar(100),
	state varchar(5),
	zip varchar(10),
	ev_level1_evse numeric,
	ev_level2_evse numeric,
	ev_dc_fast numeric,
	ev_network	varchar(200), 
	ev_connector_types varchar(200), 
	access_code	varchar(100), 
	access_code_detail varchar(200), 
	facility_type varchar(200)
);
--Data for ev_chargers was inserted from the csv file using the pgAdmin import function

--Creating another table for population by state
CREATE TABLE state_pop (
	state varchar(2), 
	population numeric
);

--Inserting the population numbers for each state
INSERT INTO state_pop VALUES ('AK', 733583); 
INSERT INTO state_pop VALUES ('AL', 5074296); 
INSERT INTO state_pop VALUES ('AR', 3045637); 
INSERT INTO state_pop VALUES ('AZ', 7359197); 
INSERT INTO state_pop VALUES ('CA', 39029342); 
INSERT INTO state_pop VALUES ('CO', 5839926); 
INSERT INTO state_pop VALUES ('CT', 3626205); 
INSERT INTO state_pop VALUES ('DC', 671803); 
INSERT INTO state_pop VALUES ('DE', 1018396); 
INSERT INTO state_pop VALUES ('FL', 22244823); 
INSERT INTO state_pop VALUES ('GA', 10912876); 
INSERT INTO state_pop VALUES ('HI', 1440196); 
INSERT INTO state_pop VALUES ('IA', 3200517); 
INSERT INTO state_pop VALUES ('ID', 1939033); 
INSERT INTO state_pop VALUES ('IL', 12582032); 
INSERT INTO state_pop VALUES ('IN', 6833037); 
INSERT INTO state_pop VALUES ('KS', 2937150); 
INSERT INTO state_pop VALUES ('KY', 4512310); 
INSERT INTO state_pop VALUES ('LA', 4590241); 
INSERT INTO state_pop VALUES ('MA', 6981974); 
INSERT INTO state_pop VALUES ('MD', 6164660); 
INSERT INTO state_pop VALUES ('ME', 1385340); 
INSERT INTO state_pop VALUES ('MI', 10034113); 
INSERT INTO state_pop VALUES ('MN', 5717184); 
INSERT INTO state_pop VALUES ('MO', 6177957); 
INSERT INTO state_pop VALUES ('MS', 2940057); 
INSERT INTO state_pop VALUES ('MT', 1122867); 
INSERT INTO state_pop VALUES ('NC', 10698973); 
INSERT INTO state_pop VALUES ('ND', 779261); 
INSERT INTO state_pop VALUES ('NE', 1967923); 
INSERT INTO state_pop VALUES ('NH', 1395231); 
INSERT INTO state_pop VALUES ('NJ', 9261699); 
INSERT INTO state_pop VALUES ('NM', 2113344); 
INSERT INTO state_pop VALUES ('NV', 3177772); 
INSERT INTO state_pop VALUES ('NY', 19677151); 
INSERT INTO state_pop VALUES ('OH', 11756058); 
INSERT INTO state_pop VALUES ('OK', 4019800); 
INSERT INTO state_pop VALUES ('OR', 4240137); 
INSERT INTO state_pop VALUES ('PA', 12972008); 
INSERT INTO state_pop VALUES ('PR', 3221789); 
INSERT INTO state_pop VALUES ('RI', 1093734); 
INSERT INTO state_pop VALUES ('SC', 5282634); 
INSERT INTO state_pop VALUES ('SD', 909824); 
INSERT INTO state_pop VALUES ('TN', 7051339); 
INSERT INTO state_pop VALUES ('TX', 30029572); 
INSERT INTO state_pop VALUES ('UT', 3380800); 
INSERT INTO state_pop VALUES ('VA', 8683619); 
INSERT INTO state_pop VALUES ('VT', 647064); 
INSERT INTO state_pop VALUES ('WA', 7785786); 
INSERT INTO state_pop VALUES ('WI', 5892539); 
INSERT INTO state_pop VALUES ('WV', 1775156); 
INSERT INTO state_pop VALUES ('WY', 581381); 


--Creating another table for population by state
CREATE TABLE lane_miles (
	state varchar(2), 
	lane_miles numeric
);

--Inserting the lane mile numbers for each state
INSERT INTO lane_miles VALUES('AL', 209603.441);
INSERT INTO lane_miles VALUES('AK', 35927.163);
INSERT INTO lane_miles VALUES('AZ', 162428.094);
INSERT INTO lane_miles VALUES('AR', 204357.853);
INSERT INTO lane_miles VALUES('CA', 400218.078);
INSERT INTO lane_miles VALUES('CO', 186199.289);
INSERT INTO lane_miles VALUES('CT', 45466.82);
INSERT INTO lane_miles VALUES('DE', 14164.08);
INSERT INTO lane_miles VALUES('DC', 3460.429);
INSERT INTO lane_miles VALUES('FL', 276841.431);
INSERT INTO lane_miles VALUES('GA', 267602.54);
INSERT INTO lane_miles VALUES('HI', 9836.601);
INSERT INTO lane_miles VALUES('ID', 110573.407);
INSERT INTO lane_miles VALUES('IL', 306802.66);
INSERT INTO lane_miles VALUES('IN', 204480.767);
INSERT INTO lane_miles VALUES('IA', 235971.074);
INSERT INTO lane_miles VALUES('KS', 284244.152);
INSERT INTO lane_miles VALUES('KY', 166966.652);
INSERT INTO lane_miles VALUES('LA', 138441.309);
INSERT INTO lane_miles VALUES('ME', 46774.84);
INSERT INTO lane_miles VALUES('MD', 71406.1);
INSERT INTO lane_miles VALUES('MA', 77835.04);
INSERT INTO lane_miles VALUES('MI', 256174.784);
INSERT INTO lane_miles VALUES('MN', 293787.693);
INSERT INTO lane_miles VALUES('MS', 162168.836);
INSERT INTO lane_miles VALUES('MO', 278578.728);
INSERT INTO lane_miles VALUES('MT', 150276.906);
INSERT INTO lane_miles VALUES('NE', 194249.098);
INSERT INTO lane_miles VALUES('NV', 99754.683);
INSERT INTO lane_miles VALUES('NH', 33548.05);
INSERT INTO lane_miles VALUES('NJ', 84779.772);
INSERT INTO lane_miles VALUES('NM', 150973.077);
INSERT INTO lane_miles VALUES('NY', 241196.38);
INSERT INTO lane_miles VALUES('NC', 230166.777);
INSERT INTO lane_miles VALUES('ND', 179350.926);
INSERT INTO lane_miles VALUES('OH', 262072.633);
INSERT INTO lane_miles VALUES('OK', 240165.789);
INSERT INTO lane_miles VALUES('OR', 162857.24);
INSERT INTO lane_miles VALUES('PA', 252114.593);
INSERT INTO lane_miles VALUES('RI', 12737.494);
INSERT INTO lane_miles VALUES('SC', 166567.845);
INSERT INTO lane_miles VALUES('SD', 165268.361);
INSERT INTO lane_miles VALUES('TN', 204240.915);
INSERT INTO lane_miles VALUES('TX', 698839.154);
INSERT INTO lane_miles VALUES('UT', 102671.839);
INSERT INTO lane_miles VALUES('VT', 29261.166);
INSERT INTO lane_miles VALUES('VA', 164769.434);
INSERT INTO lane_miles VALUES('WA', 165099.425);
INSERT INTO lane_miles VALUES('WV', 80134.993);
INSERT INTO lane_miles VALUES('WI', 239518.43);
INSERT INTO lane_miles VALUES('WY', 62588.46);
INSERT INTO lane_miles VALUES('PR', 41587.257);

--Querying the IEA data to filter only what we need 
SELECT 
	* 
FROM 
	ev_data
WHERE 
	region = 'USA' AND
	mode IN('Cars', 'EV') AND
	parameter IN('EV charging points', 'EV sales');


--Querying the EV charging data by state and joining with the popuation data
WITH charging_data AS (
	SELECT 
		state,
		COUNT(ev_level1_evse) AS count_level_1, 
		COUNT(ev_level2_evse) AS count_level_2, 
		COUNT(ev_dc_fast) AS count_dc_fast
	FROM 
		ev_chargers
	GROUP BY 
		state
	ORDER BY
		state
)

SELECT 
	c.state,
	p.population,
	c.count_level_1,
	c.count_level_2,
	c.count_dc_fast,
	c.count_level_1 + c.count_level_2 + c.count_dc_fast AS total_charger_count,
	ROUND(((c.count_level_1 + c.count_level_2 + c.count_dc_fast) * 100000) / p.population, 5) AS chargers_per_100K_people, 
	l.lane_miles, 
	ROUND(((c.count_level_1 + c.count_level_2 + c.count_dc_fast) * 1000) / l.lane_miles, 5) AS chargers_per_1Klane_mile
FROM 
	charging_data AS c
INNER JOIN
	state_pop AS p
ON
	c.state = p.state
INNER JOIN 
	lane_miles AS l
ON 
	c.state = l.state;






















 



