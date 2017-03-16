-- stops the script execution in case of an error
whenever sqlerror exit

set feedback off
set verify off
set timing off
set define off

prompt DELETING TABLES...
drop table ogd_cities cascade constraints purge;
drop table ogd_admin_divisions cascade constraints purge;
drop table ogd_countries cascade constraints purge;
drop table ogd_continents cascade constraints purge;
prompt ...COMPLETED

prompt DELETING SEQUENCES...
drop sequence ogd_cities_seq;
drop sequence ogd_admin_divisions_seq;
drop sequence ogd_countries_seq;
drop sequence ogd_continents_seq;
prompt ...COMPLETED

commit;
