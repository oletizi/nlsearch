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

module.exports.getStateName = async function (conn, id) {
  return new Promise((resolve, reject) => {
    let sql = `select g.name
              from geo g
              where g.state = ${id}
                and g.county = 0
                and g.county_sub = 0
                and g.place = 0 
                and g.city = 0`;
    console.log('executing:', sql)
    conn.query(sql,
      (error, results) => {
        if (error) {
          reject(error)
        } else {
          console.log('results', results)
          resolve(results[0].name)
        }
      })
  })
}

module.exports.getStateByName = async function (conn, name) {
  return new Promise((resolve, reject) => {
    let sql = `select g.state
                  from geo g
                  where g.name LIKE "%${name}%"
                    and g.state <> 0
                    and g.county = 0
                    and g.county_sub = 0
                    and g.place = 0
                    and g.city = 0`;
    console.log('executing: ', sql)
    conn.query(sql,
        (error, results) => {
          if (error) { reject(error)}
          else {
            console.log('results', results)
            resolve(results[0].state)
          }
        }
      )
    }
  );
}
