set termout off;

prompt INSTALLING COUNTRIES
prompt *********************************
@countries.sql;
prompt COUNTRIES COMPLETED
prompt *********************************
prompt INSTALLING STATES
prompt *********************************
@states.sql;
prompt STATES COMPLETED
prompt *********************************
prompt INSTALLING CITIES
prompt *********************************
@cities.sql;
prompt CITIES COMPLETED
prompt *********************************

commit;
