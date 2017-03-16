-- create table structure
create table ogd_admin_divisions as
select 1 admin_division_id
, 1 country_id
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
alter table ogd_admin_divisions add (created_by varchar2(100));
alter table ogd_admin_divisions add (created_on date);
alter table ogd_admin_divisions add (updated_by varchar2(100));
alter table ogd_admin_divisions add (updated_on date);

-- add PK constraint
alter table ogd_admin_divisions modify (admin_division_id not null);
alter table ogd_admin_divisions add constraint ogd_admin_divisions_pk primary key (admin_division_id) enable;

-- add FK contraints
alter table ogd_admin_divisions add constraint ogd_admin_divisions_fk1
foreign key (country_id) references ogd_countries (country_id) enable;

-- sequence for Oracle
create sequence ogd_admin_divisions_seq
minvalue 1 maxvalue 99999999999999999
increment by 1 start with 1
nocache;

-- trigger for Oracle
create or replace trigger ogd_admin_divisions_biu_trg
before insert or update on ogd_admin_divisions
for each row
begin
    if inserting then
        :new.admin_division_id := ogd_admin_divisions_seq.nextval;
        :new.created_by := user;
        :new.created_on := sysdate;
    end if;

    :new.updated_by := user;
    :new.updated_on := sysdate;
end;
/
