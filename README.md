# nlsearch

octosql -c .octosql.yaml "select g.name from geo g  where g.state = 1 and g.county = 0 and g.county_sub = 0 and g.place = 0 and g.city = 0 or g.state = 1 and g.county = 1"

find state id by name
select g.state from geo g where g.name like '%labama%' and county = 0 and county_sub = 0 and place = 0 and city = 0;

