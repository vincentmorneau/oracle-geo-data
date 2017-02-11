# Oracle Countries States Cities
Just three tables containing the world's **246 countries**, **4,120 states** and **48,314 cities** in an Oracle-ready script.

## Install
- Execute `install.sql` in your parsing schema.

Note: It can take a few minutes to install *(95 seconds on my environment)*.

## Table `countries` (246 records)
Column Name | Data Type | Nullable | Default
--- | --- | --- | ---
country_id | number | No |
code | varchar2(3 byte) | No |
name | varchar2(150 byte) | No |
phone_code | number | No |

## Table `states` (4,120 records)
Column Name | Data Type | Nullable | Default
--- | --- | --- | ---
state_id | number | No |
name | varchar2(50 byte) | No |
country_id | number | No | 1

## Table `cities` (48,314 records)
Column Name | Data Type | Nullable | Default
--- | --- | --- | ---
city_id | number | No |
name | varchar2(50 byte) | No |
state_id | number | No |

## Changelog
[See changelog.](changelog.md)

## Adapted for Oracle from
https://github.com/hiiamrohit/Countries-States-Cities-database
