# Table Definitions

### Table `ogd_continents` (7 records)
Column Name | Data Type | Comments
--- | --- | ---
continent_id | number |
geonameid | number |
name | varchar2(200) |
asciiname | varchar2(200) |
latitude | number |
longitude | number |
feature_class | varchar2(1) |
feature_code | varchar2(10) |
country_code | varchar2(2) |
cc2 | varchar2(200) |
admin1_code | varchar2(20) |
admin2_code | varchar2(80) |
admin3_code | varchar2(20) |
admin4_code | varchar2(20) |
population | number |
elevation | number |
dem | number |
timezone | varchar2(40) |
modification_date | date |
continent_code | varchar2(2) |
created_by | varchar2(100) |
created_on | date |
updated_by | varchar2(100) |
updated_on | date |

### Table `ogd_countries` (252 records)
Column Name | Data Type | Comments
--- | --- | ---
country_id | number |
continent_id | number |
geonameid | number |
iso | varchar2(2) |
iso3 | varchar2(3) |
iso_numeric | varchar2(3) |
fips | varchar2(3) |
country | varchar2(50) |
capital | varchar2(50) |
area | number |
population | number |
continent | varchar2(2) |
tld | varchar2(3) |
currency_code | varchar2(3) |
currency_name | varchar2(50) |
phone | varchar2(50) |
postal_code_format | varchar2(100) |
postal_code_regex | varchar2(255) |
languages | varchar2(100) |
neighbours | varchar2(50) |
equivalent_fips_code | varchar2(2) |
name | varchar2(200) |
asciiname | varchar2(200) |
latitude | number |
longitude | number |
feature_class | varchar2(1) |
feature_code | varchar2(10) |
country_code | varchar2(2) |
cc2 | varchar2(200) |
admin1_code | varchar2(20) |
admin2_code | varchar2(80) |
admin3_code | varchar2(20) |
admin4_code | varchar2(20) |
population | number |
elevation | number |
dem | number |
timezone | varchar2(40) |
modification_date | date |
continent_code | varchar2(2) |
created_by | varchar2(100) |
created_on | date |
updated_by | varchar2(100) |
updated_on | date |


### Table `ogd_admin_divisions` (3,916 records)
*Note: An administrative division can be a state, region, province, territory, etc.*

Column Name | Data Type | Comments
--- | --- | ---
admin_division_id | number |
country_id | number |
geonameid | number |
name | varchar2(200) |
asciiname | varchar2(200) |
latitude | number |
longitude | number |
feature_class | varchar2(1) |
feature_code | varchar2(10) |
country_code | varchar2(2) |
cc2 | varchar2(200) |
admin1_code | varchar2(20) |
admin2_code | varchar2(80) |
admin3_code | varchar2(20) |
admin4_code | varchar2(20) |
population | number |
elevation | number |
dem | number |
timezone | varchar2(40) |
modification_date | date |
continent_code | varchar2(2) |
created_by | varchar2(100) |
created_on | date |
updated_by | varchar2(100) |
updated_on | date |

### Table `ogd_cities` (22,598 records)
Column Name | Data Type | Comments
--- | --- | ---
city_id | number |
admin_division_id | number |
geonameid | number |
name | varchar2(200) |
asciiname | varchar2(200) |
latitude | number |
longitude | number |
feature_class | varchar2(1) |
feature_code | varchar2(10) |
country_code | varchar2(2) |
cc2 | varchar2(200) |
admin1_code | varchar2(20) |
admin2_code | varchar2(80) |
admin3_code | varchar2(20) |
admin4_code | varchar2(20) |
population | number |
elevation | number |
dem | number |
timezone | varchar2(40) |
modification_date | date |
continent_code | varchar2(2) |
created_by | varchar2(100) |
created_on | date |
updated_by | varchar2(100) |
updated_on | date |
