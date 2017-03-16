# Oracle Geo Data
Four tables containing the world's **7 continents**, **252 countries**, **3,916 administrative divisions** and **22,598 cities** in a sql script for Oracle.

Demo: https://demo.insum.ca/ords/f?p=131

*Note: An administrative division can be a state, region, province, territory, etc.*

## Install - Standard *(easiest)*
- Execute `compiled/install.sql`.

*Note: Our testing environment takes 135 seconds to complete.*

#### Uninstall
- Execute `compiled/uninstall.sql`.

## Install - from Source
*Use this method if you wish to understand how to the tables are populated from http://www.geonames.org/.*

- Execute `source/install.sql`.

*Note: Our testing environment takes 120 seconds to complete.*

#### Uninstall
- Execute `source/uninstall.sql`.

## Update
*Use this if you were using a previous build of Oracle Geo Data and only wish to update your data.*

- Execute `source/update.sql`.

*Note: Our testing environment takes 115 seconds to complete.*

## Table Definitions
[See documentation.](docs/tables.md)

## Source Data
Special thanks to http://www.geonames.org/

## Changelog
[See changelog.](changelog.md)

## Sponsors
Thanks to [Insum Solutions](http://insum.ca/) for sponsoring this project.

## License
MIT © [Vincent Morneau](http://vmorneau.me)
