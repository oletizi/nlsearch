select y.year, aaa.name, aaa.estabs from (select aa.name, aa.estabs estabs from (select g.name, a.st, a.estabs from (select c.year, c.st, c.estabs from bds2018_st c ) a, geo g where a.st = g.state and g.place = 0 and g.city = 0 and g.county = 0 and g.county_sub = 0 ) aa ) aaa, bds2018_st y

# find the avg net job creation rate by county since betweeen 2008 and 2009 for counties with at least 1000 jobs created
set @minYear = 2008;
set @maxYear = 2009;
set @minJobCreation = 1000;
set @headroomFactor = 0.2;
select (@maxYear - @minYear) - ((@maxYear - @minYear) * @headroomFactor) min_data_points,
       a.data_points,
       a.st                                                              state_id,
       a.cty                                                             county_id,
       a.avg_net_job_creation,
       a.avg_net_job_creation_rate,
       gc.name                                                           county,
       gs.name                                                           state
from (select count(*)                     data_points,
             c.st,
             c.cty,
             avg(c.net_job_creation)      avg_net_job_creation,
             avg(c.net_job_creation_rate) avg_net_job_creation_rate
      from bds2018_cty c
      where c.year >= @minYear
        and c.year <= @maxYear
      group by c.st, c.cty) a,
     geo gc,
     geo gs
where a.data_points >= (@maxYear - @minYear) - ((@maxYear - @minYear) * @headroomFactor)
  and avg_net_job_creation >= @minJobCreation
  and gc.state = a.st
  and gc.county = a.cty
  and gc.county_sub = 0
  and gc.place = 0
  and gc.city = 0
  and gs.state = a.st
  and gs.county = 0
  and gs.county_sub = 0
  and gs.place = 0
  and gs.city = 0
order by a.avg_net_job_creation_rate
    desc;


# find the avg net job creation rate by county since 1990
set @minYear = 1990;
set @headroomFactor = 0.2;
select (2018 - @minYear) - ((2018 - @minYear) * @headroomFactor) min_data_points,
       a.data_points,
       a.st                                                      state_id,
       a.cty                                                     county_id,
       a.avg_net_job_creation_rate,
       gc.name                                                   county,
       gs.name                                                   state
from (select count(*) data_points, c.st, c.cty, avg(c.net_job_creation_rate) avg_net_job_creation_rate
      from bds2018_cty c
      where c.year >= @minYear
      group by c.st, c.cty) a,
     geo gc,
     geo gs
where a.data_points >= (2018 - @minYear) - ((2018 - @minYear) * @headroomFactor)
  and gc.state = a.st
  and gc.county = a.cty
  and gc.county_sub = 0
  and gc.place = 0
  and gc.city = 0
  and gs.state = a.st
  and gs.county = 0
  and gs.county_sub = 0
  and gs.place = 0
  and gs.city = 0
order by a.avg_net_job_creation_rate
    desc;


# find the avg net job creation rate by county
select a.data_points, a.st state_id, a.cty county_id, a.avg_net_job_creation_rate, gc.name county, gs.name state
from (select count(*) data_points, c.st, c.cty, avg(c.net_job_creation_rate) avg_net_job_creation_rate
      from bds2018_cty c
      group by c.st, c.cty) a,
     geo gc,
     geo gs
where a.data_points > 30
  and gc.state = a.st
  and gc.county = a.cty
  and gc.county_sub = 0
  and gc.place = 0
  and gc.city = 0
  and gs.state = a.st
  and gs.county = 0
  and gs.county_sub = 0
  and gs.place = 0
  and gs.city = 0
order by a.avg_net_job_creation_rate
    desc;

select count(*) data_points, c.st, c.cty, avg(c.net_job_creation_rate) avg_net_job_creation_rate
from bds2018_cty c
group by c.st, c.cty
order by avg_net_job_creation_rate;



select cc.st, cc.cty, cc.data_points
from (select count(*) data_points, c.st, c.cty
      from bds2018_cty c
      group by c.st, c.cty) cc;



select count(*) data_points, c.st, c.cty
from bds2018_cty c
group by c.st, c.cty
order by data_points;

select count(*)
from bds2018_cty c
where c.st = 19
  and c.cty = 998;

# find the avg net job creation rate by county
select c.st, c.cty, avg(c.net_job_creation_rate)
from bds2018_cty c
group by c.st, c.cty;

# find the counties with the max net job creation rate by year before 1980
select m.year,
       m.st,
       c.cty,
       c.net_job_creation,
       m.max_job_creation_rate,
       c.net_job_creation_rate,
       gc.name,
       gs.name
from (select year, st, max(net_job_creation_rate) max_job_creation_rate
      from bds2018_cty
      group by st, year) m,
     bds2018_cty c,
     geo gc,
     geo gs
where m.year < 1980
  and m.year = c.year
  and m.st = c.st
  and c.net_job_creation_rate = m.max_job_creation_rate
  and gc.state = m.st
  and gc.county = c.cty
  and gc.county_sub = 0
  and gc.place = 0
  and gc.city = 0
  and gs.state = m.st
  and gs.county = 0
  and gs.county_sub = 0
  and gs.place = 0
  and gs.city = 0
order by year, c.job_creation_rate desc;

# find the counties with the max net job creation rate by year since 2015
select m.year,
       m.st,
       c.cty,
       c.net_job_creation,
       m.max_job_creation_rate,
       c.net_job_creation_rate,
       gc.name,
       gs.name
from (select year, st, max(net_job_creation_rate) max_job_creation_rate
      from bds2018_cty
      group by st, year) m,
     bds2018_cty c,
     geo gc,
     geo gs
where m.year >= 2015
  and m.year = c.year
  and m.st = c.st
  and c.net_job_creation_rate = m.max_job_creation_rate
  and gc.state = m.st
  and gc.county = c.cty
  and gc.county_sub = 0
  and gc.place = 0
  and gc.city = 0
  and gs.state = m.st
  and gs.county = 0
  and gs.county_sub = 0
  and gs.place = 0
  and gs.city = 0
order by year, c.job_creation_rate desc;

# 0.800000000000000000000000000000	1	48	261	104.444	Kenedy County	Texas

select year, net_job_creation, net_job_creation_rate
from bds2018_cty
where st = 53
  and cty = 69
  and year = 2008
;

# find the max number of closed businesses by state, by year
select c.year, g.name, max(estabs_exit) estabs_exit
from (select s.year, s.st, s.estabs_exit
      from bds2018_st s,
           geo g
      where s.st = g.state
        and g.place = 0
        and g.city = 0
        and g.county = 0
        and g.county_sub = 0
      order by s.year desc, s.estabs_exit desc) c,
     geo g
where c.st = g.state
  and g.county_sub = 0
  and g.county = 0
  and g.city = 0
  and g.place = 0
group by c.year, g.name
order by c.year desc, estabs_exit desc
;

# find the number of closed businesses by state, by year
select s.year, s.estabs_exit, g.name
from bds2018_st s,
     geo g
where s.st = g.state
  and g.place = 0
  and g.city = 0
  and g.county = 0
  and g.county_sub = 0
order by s.year desc, s.estabs_exit desc
;


# get the number of establishments by state per year (desc)
select y.year, aaa.name, aaa.estabs
from (select aa.name, aa.estabs estabs
      from (select g.name, a.st, a.estabs
            from (select c.year, c.st, c.estabs
                  from bds2018_st c
                 ) a,
                 geo g
            where a.st = g.state
              and g.place = 0
              and g.city = 0
              and g.county = 0
              and g.county_sub = 0
           ) aa
     ) aaa,
     bds2018_st y
where y.estabs = aaa.estabs
order by y.year desc, aaa.estabs desc
;

# find the max establishments by state
select aa.name, max(aa.estabs) estabs
from (select a.year, g.name, a.estabs
      from (select c.year, c.st, c.estabs
            from bds2018_st c
# group by c.st, c.year
            order by c.year, c.st
           ) a,
           geo g
      where a.st = g.state
        and g.place = 0
        and g.city = 0
        and g.county = 0
        and g.county_sub = 0
     ) aa
group by aa.name
;

# select the state with the most establishments by year, with state name
select f.year, f.estabs, g.name
from (select aaa.year, max(aaa.estabs) estabs, m.st
      from (select aa.year, max(aa.estabs) estabs
            from (select a.year, g.name, a.estabs
                  from (select c.year, c.st, c.estabs
                        from bds2018_st c
                        order by c.year, c.st
                       ) a,
                       geo g
                  where a.st = g.state
                    and g.place = 0
                    and g.city = 0
                    and g.county = 0
                    and g.county_sub = 0) aa
            group by aa.year) aaa,
           bds2018_st m
      where aaa.estabs = m.estabs
        and aaa.year = m.year
      group by aaa.year, m.st) f,
     geo g
where f.st = g.state
  and g.county_sub = 0
  and g.county = 0
  and g.city = 0
  and g.place = 0
order by f.year desc
;

# select the state with the most establishments by year
select aaa.year, max(aaa.estabs), m.st
from (select aa.year, max(aa.estabs) estabs
      from (select a.year, g.name, a.estabs
            from (select c.year, c.st, c.estabs
                  from bds2018_st c
                  order by c.year, c.st
                 ) a,
                 geo g
            where a.st = g.state
              and g.place = 0
              and g.city = 0
              and g.county = 0
              and g.county_sub = 0) aa
      group by aa.year) aaa,
     bds2018_st m
where aaa.estabs = m.estabs
  and aaa.year = m.year
group by aaa.year, m.st
order by aaa.year desc
;

# select the state with the most establishments by year
select aa.year, max(aa.estabs)
from (select a.year, g.name, a.estabs
      from (select c.year, c.st, c.estabs
            from bds2018_st c
            order by c.year, c.st
           ) a,
           geo g
      where a.st = g.state
        and g.place = 0
        and g.city = 0
        and g.county = 0
        and g.county_sub = 0) aa
group by aa.year
order by aa.year desc
;


# select the number of establishments by state by year
select a.year, g.name, a.estabs
from (select c.year, c.st, c.estabs
      from bds2018_st c
# group by c.st, c.year
      order by c.year, c.st
     ) a,
     geo g
where a.st = g.state
  and g.place = 0
  and g.city = 0
  and g.county = 0
  and g.county_sub = 0
order by a.year desc, a.estabs desc
;


# where c.st = (select g.st
#               from geo g
#               where g.state = c.st
#                 and g.county_sub = 0
#                 and g.county = 0
#                 and g.city = 0
#                 and g.place = 0
# )
# group by c.st, c.year;

