-- create table structure
create table ogd_countries as
select 1 country_id
, 1 continent_id
, c.geonameid
, c.iso
, c.iso3
, c.iso_numeric
, c.fips
, c.country
, c.capital
, c.area
, c.population
, c.continent
, c.tld
, c.currency_code
, c.currency_name
, c.phone
, c.postal_code_format
, c.postal_code_regex
, c.languages
, c.neighbours
, c.equivalent_fips_code
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
, g.elevation
, g.dem
, g.timezone
, g.modification_date
from geonames_countries c
join geonames g on g.geonameid = c.geonameid
where 1=2 -- 1=2 to create table structure only with no data
;

-- add audit fields
alter table ogd_countries add (created_by varchar2(100));
alter table ogd_countries add (created_on date);
alter table ogd_countries add (updated_by varchar2(100));
alter table ogd_countries add (updated_on date);

-- add PK constraint
alter table ogd_countries modify (country_id not null);
alter table ogd_countries add constraint ogd_countries_pk primary key (country_id) enable;

-- add FK contraints
alter table ogd_countries add constraint ogd_countries_fk1
foreign key (continent_id) references ogd_continents (continent_id) enable;

-- sequence for Oracle
create sequence ogd_countries_seq
minvalue 1 maxvalue 99999999999999999
increment by 1 start with 1
nocache;

-- trigger for Oracle
create or replace trigger ogd_countries_biu_trg
before insert or update on ogd_countries
for each row
begin
    if inserting then
        :new.country_id := ogd_countries_seq.nextval;
        :new.created_by := user;
        :new.created_on := sysdate;
    end if;

    :new.updated_by := user;
    :new.updated_on := sysdate;
end;
/
