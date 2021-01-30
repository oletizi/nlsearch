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

      //const name = await db.getStateName(conn, id)
      //console.log('name: ', name)

      //getBusinessCountPerCounty()
    } catch (err) {
      reject(err)
    } finally {
      db.returnConnection(conn)
    }
  })
}
