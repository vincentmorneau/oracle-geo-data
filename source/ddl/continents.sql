-- create table structure
create table ogd_continents as
select 1 continent_id
, g.geonameid
, g.name
, g.asciiname
, g.latitude
, g.longitude
, g.feature_class
, g.feature_code
, g.country_code
, g.cc2
, g.admin1_code
, g.admin2_code
, g.admin3_code
, g.admin4_code
, g.population
, g.elevation
, g.dem
, g.timezone
, g.modification_date
from geonames g
where 1=2 -- 1=2 to create table structure only with no data
;

-- add audit fields
alter table ogd_continents add (continent_code varchar2(2));
alter table ogd_continents add (created_by varchar2(100));
alter table ogd_continents add (created_on date);
alter table ogd_continents add (updated_by varchar2(100));
alter table ogd_continents add (updated_on date);

-- add PK constraint
alter table ogd_continents modify (continent_id not null);
alter table ogd_continents add constraint ogd_continents_pk primary key (continent_id) enable;

-- sequence for Oracle
create sequence ogd_continents_seq
minvalue 1 maxvalue 99999999999999999
increment by 1 start with 1
nocache;

-- trigger for Oracle
create or replace trigger ogd_continents_biu_trg
before insert or update on ogd_continents
for each row
begin
    if inserting then
        :new.continent_id := ogd_continents_seq.nextval;
        :new.created_by := user;
        :new.created_on := sysdate;
    end if;

    :new.updated_by := user;
    :new.updated_on := sysdate;
end;
/
