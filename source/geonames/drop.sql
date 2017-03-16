declare
    l_table_count number;
begin
    select count(*) into l_table_count from user_tables where table_name = upper('geonames_countries');
    if l_table_count > 0 then
        execute immediate 'drop table geonames_countries cascade constraints purge';
    end if;

    select count(*) into l_table_count from user_tables where table_name = upper('geonames');
    if l_table_count > 0 then
        execute immediate 'drop table geonames cascade constraints purge';
    end if;
end;
/
