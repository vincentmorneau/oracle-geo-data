-- stops the script execution in case of an error
whenever sqlerror exit

set feedback off
set verify off
set timing off
set define off

prompt UPDATING DATA SOURCE...
@geonames\drop.sql;
@geonames\geonames_countries.sql;
@geonames\geonames.sql;
prompt ...COMPLETED

prompt UPDATING CONTINENTS...
@data\continents.sql;
prompt ...COMPLETED

prompt UPDATING COUNTRIES...
@data\countries.sql;
prompt ...COMPLETED

prompt UPDATING STATES...
@data\states.sql;
prompt ...COMPLETED

prompt UPDATING CITIES...
@data\cities.sql;
prompt ...COMPLETED

prompt UPDATING FOREIGN KEYS...
@lib\resolve_foreign_keys.sql;
prompt ...COMPLETED

commit;
