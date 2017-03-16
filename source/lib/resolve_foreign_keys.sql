declare
    -- table of continent_id
    type continent_ids_t is table of ogd_continents.continent_id%type index by pls_integer;
    l_continent_ids continent_ids_t;

    -- table of country_id
    type country_ids is table of ogd_countries.country_id%type index by pls_integer;
    l_country_ids country_ids;

    -- table of admin_division_id
    type admin_division_ids is table of ogd_admin_divisions.admin_division_id%type index by pls_integer;
    l_admin_division_ids admin_division_ids;

    -- table of city_id
    type city_ids is table of ogd_cities.city_id%type index by pls_integer;
    l_city_ids city_ids;
begin
    -- resolve ogd_countries FK
    select t.continent_id, c.country_id
    bulk collect into l_continent_ids, l_country_ids
    from ogd_continents t
    join ogd_countries c on c.continent = t.continent_code;

    forall i in 1 .. l_country_ids.count
        update ogd_countries
        set continent_id = l_continent_ids(i)
        where country_id = l_country_ids(i);

    -- resolve ogd_admin_divisions FK
    select c.country_id, s.admin_division_id
    bulk collect into l_country_ids, l_admin_division_ids
    from ogd_countries c
    join ogd_admin_divisions s on s.country_code = c.country_code;

    forall i in 1 .. l_admin_division_ids.count
        update ogd_admin_divisions
        set country_id = l_country_ids(i)
        where admin_division_id = l_admin_division_ids(i);

    -- resolve ogd_cities FK
    select s.admin_division_id, c.city_id
    bulk collect into l_admin_division_ids, l_city_ids
    from ogd_admin_divisions s
    join ogd_cities c
    on c.country_code = s.country_code
    and c.admin1_code = s.admin1_code;

    forall i in 1 .. l_city_ids.count
        update ogd_cities
        set admin_division_id = l_admin_division_ids(i)
        where city_id = l_city_ids(i);
end;
/
