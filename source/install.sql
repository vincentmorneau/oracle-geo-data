-- stops the script execution in case of an error
whenever sqlerror exit

set feedback off
set verify off
set timing off
set define off

prompt INSTALLING DATA SOURCE...
@geonames\drop.sql;
@geonames\geonames_countries.sql;
@geonames\geonames.sql;
prompt ...COMPLETED

prompt INSTALLING CONTINENTS...
@ddl\continents.sql;
@data\continents.sql;
prompt ...COMPLETED

prompt INSTALLING COUNTRIES...
@ddl\countries.sql;
@data\countries.sql;
prompt ...COMPLETED

prompt INSTALLING STATES...
@ddl\states.sql;
@data\states.sql;
prompt ...COMPLETED

prompt INSTALLING CITIES...
@ddl\cities.sql;
@data\cities.sql;
prompt ...COMPLETED

prompt INSTALLING FOREIGN KEYS...
@lib\resolve_foreign_keys.sql;
prompt ...COMPLETED

commit;
