module.exports.returnConnection = (conn) => {
  conn.end()
}

const mysql = require("mysql");

module.exports.getConnection = function () {
  const conn = mysql.createConnection({
    host: 'localhost',
    user: 'bds',
    password: 'bds',
    database: 'bds'
  });
  conn.connect()
  return conn
}

module.exports.getStateByName = async function (conn, name) {
  let sql = `select *
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

