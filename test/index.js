const db = require('./lib/db')

test().catch(console.error)

async function test() {
  return new Promise(async (resolve, reject) => {
    let conn
    try {
      conn = db.getConnection()

      const state = await db.getStateByName(conn, 'California')
      console.log('state id: ', state.state)
      console.log('state name: ', state.name)

      const county = await db.getCountyByName(conn, state.state, 'Sonoma')
      console.log('county id: ', county.county)
      console.log('county name: ', county.name)
      //const name = await db.getStateName(conn, id)
      //console.log('name: ', name)

      const rs = await db.getJobCreationRange(conn, 1000, 2008, 2009)
      printRs(rs)

      //getBusinessCountPerCounty()
    } catch (err) {
      reject(err)
    } finally {
      db.returnConnection(conn)
    }
  })
}

function printRs(rs) {
  rs.map((row) => {
    let out = []
    for (const [key, value] of Object.entries(row)) {
      out.push(value)
    }
    console.log(out.join(','))
  })
}
