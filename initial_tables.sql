begin;

drop table if exists environment cascade;

create table environment (id bigserial primary key, poll_taker varchar, co_date varchar, co_count float);

commit;

