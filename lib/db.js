module.exports.returnConnection = (conn) => {
  conn.end()
}

const mysql = require("mysql");

module.exports.getConnection = function () {
  const conn = mysql.createConnection({
    host: 'db',
    user: 'bds',
    password: 'bds',
    database: 'bds'
  });
  conn.connect()
  return conn
}

// find the avg net job creation rate by county since between 2008 and 2009 for counties with at least 1000 jobs created
module.exports.getJobCreationRange = async function(conn, minJobs, minYear, maxYear) {
  const headroomFactor = 0.2
  const sql = `select (${maxYear} - ${minYear}) - ((${maxYear} - ${minYear}) * ${headroomFactor}) min_data_points,
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
      where c.year >= ${minYear}
        and c.year <= ${maxYear}
      group by c.st, c.cty) a,
     geo gc,
     geo gs
where a.data_points >= (${maxYear} - ${minYear}) - ((${maxYear} - ${minYear}) * ${headroomFactor})
  and avg_net_job_creation >= ${minJobs}
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
    desc;`
  const rs = await query(conn, sql)
  return rs
}

module.exports.getStateByName = async function (conn, name) {
  const sql = `select *
                  from geo g
                  where g.name LIKE "%${name}%"
                    and g.state <> 0
                    and g.county = 0
                    and g.county_sub = 0
                    and g.place = 0
                    and g.city = 0`;
  const rs = await query(conn, sql)
  return rs[0]
}


module.exports.getCountyByName = async function (conn, stateId, name) {
  const sql = `select *
             from geo g
             where g.name LIKE "%${name}%"
             and g.state = ${stateId}
             and g.county <> 0
             and g.county_sub = 0
             and g.place = 0
             and g.city = 0`;
  const rs = await query(conn, sql)
  return rs[0]
}

async function query(conn, sql) {
  return new Promise((resolve, reject) => {
      console.log('executing: ', sql)
      conn.query(sql,
        (error, results) => {
          if (error) {
            reject(error)
          } else {
            resolve(results)
          }
        }
      )
    }
  )
}

