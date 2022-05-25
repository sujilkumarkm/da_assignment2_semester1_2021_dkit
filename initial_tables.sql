/* creating table for later loading csv dataset */

begin;

drop table if exists environment cascade;

create table environment (co_date varchar, co_count float);

commit;

