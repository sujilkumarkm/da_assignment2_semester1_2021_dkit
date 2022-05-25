/* copying dataset from csv file to the already created table named environment  */

begin;

\copy environment from '/home/sujilkumarkm/assignment2/dataset.csv' with csv header;

commit;

/* ***************************************************** */

begin;

drop table if exists env_data cascade;

create table env_data as (select DISTINCT ON (co_date)  * from environment);

drop table if exists environment cascade;

commit;

