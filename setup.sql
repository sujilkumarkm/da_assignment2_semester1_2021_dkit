/* creating table for later loading csv dataset */

begin;

drop table if exists environment cascade;

create table environment (co_date date, co_count float);

commit;


/* copying dataset from csv file to the already created table named environment  */

begin;

\copy environment from '/home/sujilkumarkm/assignment2/master_data.csv' with csv header;

commit;

/* ***************************************************** */

begin;

drop table if exists env_data cascade;

create table env_data as (select DISTINCT ON (co_date)  * from environment);

drop table if exists environment cascade;

commit;



/* loading dataset from system */

/* method 1 (going to the folder in my local computer and open powershell and run below command) */
/* scp master_data.csv sujilkumarkm@data.peadargrant.ie:/home/sujilkumarkm/assignment2/ */

/* OR */

/* method 2 (using git repo given below clone the folder which contains the dataset) */
/* git clone https://github.com/sujilkumarkm/da_assignment2_semester2_2021_dkit.git */


/* please note that both methods are applicable. 


intial_tables.sql run to create first table in the db
data_load.sql used to load data to table with minor cleaning
analysis1.sql run for sliding window
analysis2.sql used for moving average */