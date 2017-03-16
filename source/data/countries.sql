merge into ogd_countries target
using (
    select g.geonameid
        , c.iso
        , c.iso3
        , c.iso_numeric
        , c.fips
        , c.country
        , c.capital
        , c.area
        , c.population
        , c.continent
        , c.tld
        , c.currency_code
        , c.currency_name
        , c.phone
        , c.postal_code_format
        , c.postal_code_regex
        , c.languages
        , c.neighbours
        , c.equivalent_fips_code
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
        , g.elevation
        , g.dem
        , g.timezone
        , g.modification_date
    from geonames_countries c
    join geonames g on g.geonameid = c.geonameid
) source
on (target.geonameid = source.geonameid)
when matched then
    update set
      target.iso = source.iso
    , target.iso3 = source.iso3
    , target.iso_numeric = source.iso_numeric
    , target.fips = source.fips
    , target.country = source.country
    , target.capital = source.capital
    , target.area = source.area
    , target.population = source.population
    , target.continent = source.continent
    , target.tld = source.tld
    , target.currency_code = source.currency_code
    , target.currency_name = source.currency_name
    , target.phone = source.phone
    , target.postal_code_format = source.postal_code_format
    , target.postal_code_regex = source.postal_code_regex
    , target.languages = source.languages
    , target.neighbours = source.neighbours
    , target.equivalent_fips_code = source.equivalent_fips_code
    , target.name = source.name
    , target.asciiname = source.asciiname
    , target.latitude = source.latitude
    , target.longitude = source.longitude
    , target.feature_class = source.feature_class
    , target.feature_code = source.feature_code
    , target.country_code = source.country_code
    , target.cc2 = source.cc2
    , target.admin1_code = source.admin1_code
    , target.admin2_code = source.admin2_code
    , target.admin3_code = source.admin3_code
    , target.admin4_code = source.admin4_code
    , target.elevation = source.elevation
    , target.dem = source.dem
    , target.timezone = source.timezone
    , target.modification_date = source.modification_date
when not matched then
    insert (
        geonameid
        , iso
        , iso3
        , iso_numeric
        , fips
        , country
        , capital
        , area
        , population
        , continent
        , tld
        , currency_code
        , currency_name
        , phone
        , postal_code_format
        , postal_code_regex
        , languages
        , neighbours
        , equivalent_fips_code
        , name
        , asciiname
        , latitude
        , longitude
        , feature_class
        , feature_code
        , country_code
        , cc2
        , admin1_code
        , admin2_code
        , admin3_code
        , admin4_code
        , elevation
        , dem
        , timezone
        , modification_date
    ) values (
        source.geonameid
        , source.iso
        , source.iso3
        , source.iso_numeric
        , source.fips
        , source.country
        , source.capital
        , source.area
        , source.population
        , source.continent
        , source.tld
        , source.currency_code
        , source.currency_name
        , source.phone
        , source.postal_code_format
        , source.postal_code_regex
        , source.languages
        , source.neighbours
        , source.equivalent_fips_code
        , source.name
        , source.asciiname
        , source.latitude
        , source.longitude
        , source.feature_class
        , source.feature_code
        , source.country_code
        , source.cc2
        , source.admin1_code
        , source.admin2_code
        , source.admin3_code
        , source.admin4_code
        , source.elevation
        , source.dem
        , source.timezone
        , source.modification_date
    );
