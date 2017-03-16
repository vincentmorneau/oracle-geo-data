-- stops the script execution in case of an error
whenever sqlerror exit

set feedback off
set verify off
set timing off
set define off

prompt INSTALLING PRECOMPILED FILES...
@data\export.sql;
prompt ...COMPLETED

commit;
