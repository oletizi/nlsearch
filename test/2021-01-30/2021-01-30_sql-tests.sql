# 2021-01-30 NLP POC test

# query: find the average net job creation rate by county since 1987
# result: internal server error

# query: Find the number of businesses in California by year since 2001
# result:
select c.estabs estabs, c.year year from bds2018_st c where c.st = (SELECT g.state FROM geo g WHERE g.name LIKE CONCAT('%', 'California', '%') and g.state <> 0 and g.county = 0 and g.county_sub = 0 and g.place = 0 and g.city = 0) and c.year >= 2001 order by c.year desc

# query: Find the number of businesses in California by year since 2010
# result: internal server error

# query: find the counties with the highest net job creation rate by year before 1980
# result:
select m.year, m.st, c.cty, c.net_job_creation, m.max_job_creation_rate, c.net_job_creation_rate, gc.name, gs.name from (select year, st, max(net_job_creation_rate) max_job_creation_rate from bds2018_cty group by st, year) m, bds2018_cty c, geo gc, geo gs where m.year < 1980 and m.year = c.year and m.st = c.st and c.net_job_creation_rate = m.max_job_creation_rate and gc.state = m.st and gc.county = c.cty and gc.county_sub = 0 and gc.place = 0 and gc.city = 0 and gs.state = m.st and gs.county = 0 and gs.county_sub = 0 and gs.place = 0 and gs.city = 0 order by year, c.job_creation_rate desc

# query: find the counties with the highest net job creation rate by year before 1990
# result: internal server error

# training data
#Question	Query
#Find the number of businesses in California by year since 2001	select c.estabs estabs, c.year year from bds2018_st c where c.st = (SELECT g.state FROM geo g WHERE g.name LIKE CONCAT('%', 'California', '%') and g.state <> 0 and g.county = 0 and g.county_sub = 0 and g.place = 0 and g.city = 0) and c.year >= 2001 order by c.year desc
#Find the state with the maximum number of businesses by year	select y.year, aaa.name, aaa.estabs from (select aa.name, aa.estabs estabs from (select g.name, a.st, a.estabs from (select c.year, c.st, c.estabs from bds2018_st c ) a, geo g where a.st = g.state and g.place = 0 and g.city = 0 and g.county = 0 and g.county_sub = 0 ) aa ) aaa, bds2018_st y
#find the number of closed businesses by state, by year	select s.year, s.estabs_exit, g.name from bds2018_st s, geo g where s.st = g.state and g.place = 0 and g.city = 0 and g.county = 0 and g.county_sub = 0 order by s.year desc, s.estabs_exit desc
#find the counties with the highest net job creation rate by year since 2015	select m.year, m.st, c.cty, c.net_job_creation, m.max_job_creation_rate, c.net_job_creation_rate, gc.name, gs.name from (select year, st, max(net_job_creation_rate) max_job_creation_rate from bds2018_cty group by st, year) m, bds2018_cty c, geo gc, geo gs where m.year >=2015 and m.year = c.year and m.st = c.st and c.net_job_creation_rate = m.max_job_creation_rate and gc.state = m.st and gc.county = c.cty and gc.county_sub = 0 and gc.place = 0 and gc.city = 0 and gs.state = m.st and gs.county = 0 and gs.county_sub = 0 and gs.place = 0 and gs.city = 0 order by year, c.job_creation_rate desc
#find the counties with the highest net job creation rate by year before 1980	select m.year, m.st, c.cty, c.net_job_creation, m.max_job_creation_rate, c.net_job_creation_rate, gc.name, gs.name from (select year, st, max(net_job_creation_rate) max_job_creation_rate from bds2018_cty group by st, year) m, bds2018_cty c, geo gc, geo gs where m.year < 1980 and m.year = c.year and m.st = c.st and c.net_job_creation_rate = m.max_job_creation_rate and gc.state = m.st and gc.county = c.cty and gc.county_sub = 0 and gc.place = 0 and gc.city = 0 and gs.state = m.st and gs.county = 0 and gs.county_sub = 0 and gs.place = 0 and gs.city = 0 order by year, c.job_creation_rate desc
#find the average net job creation rate by county	select a.data_points, a.st state_id, a.cty county_id, a.avg_net_job_creation_rate, gc.name county, gs.name state from (select count(*) data_points, c.st, c.cty, avg(c.net_job_creation_rate) avg_net_job_creation_rate from bds2018_cty c group by c.st, c.cty) a, geo gc, geo gs where a.data_points > 30 and gc.state = a.st and gc.county = a.cty and gc.county_sub = 0 and gc.place = 0 and gc.city = 0 and gs.state = a.st and gs.county = 0 and gs.county_sub = 0 and gs.place = 0 and gs.city = 0 order by a.avg_net_job_creation_rate desc
#find the average net job creation rate by county since 1990	set @minYear = 1990; set @headroomFactor = 0.2; select (2018 - @minYear) - ((2018 - @minYear) * @headroomFactor) min_data_points, a.data_points, a.st state_id, a.cty county_id, a.avg_net_job_creation_rate, gc.name county, gs.name state from (select count(*) data_points, c.st, c.cty, avg(c.net_job_creation_rate) avg_net_job_creation_rate from bds2018_cty c where c.year >= @minYear group by c.st, c.cty) a, geo gc, geo gs where a.data_points >= (2018 - @minYear) - ((2018 - @minYear) * @headroomFactor) and gc.state = a.st and gc.county = a.cty and gc.county_sub = 0 and gc.place = 0 and gc.city = 0 and gs.state = a.st and gs.county = 0 and gs.county_sub = 0 and gs.place = 0 and gs.city = 0 order by a.avg_net_job_creation_rate desc;
#find the average net job creation rate by county between 2008 and 2009 for counties with at least 1000 jobs created	set @minYear = 2008; set @maxYear = 2009; set @minJobCreation = 1000; set @headroomFactor = 0.2; select (@maxYear - @minYear) - ((@maxYear - @minYear) * @headroomFactor) min_data_points, a.data_points, a.st state_id, a.cty county_id, a.avg_net_job_creation, a.avg_net_job_creation_rate, gc.name county, gs.name state from (select count(*) data_points, c.st, c.cty, avg(c.net_job_creation) avg_net_job_creation, avg(c.net_job_creation_rate) avg_net_job_creation_rate from bds2018_cty c where c.year >= @minYear and c.year <= @maxYear group by c.st, c.cty) a, geo gc, geo gs where a.data_points >= (@maxYear - @minYear) - ((@maxYear - @minYear) * @headroomFactor) and avg_net_job_creation >= @minJobCreation and gc.state = a.st and gc.county = a.cty and gc.county_sub = 0 and gc.place = 0 and gc.city = 0 and gs.state = a.st and gs.county = 0 and gs.county_sub = 0 and gs.place = 0 and gs.city = 0 order by a.avg_net_job_creation_rate desc;
