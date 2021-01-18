const db = require('./lib/db')

test().catch(console.error)

async function test() {
  return new Promise(async (resolve, reject) => {
    let conn
    try {
      conn = db.getConnection()

      const id = await db.getStateByName(conn, 'California')
      console.log('id: ', id)

      const name = await db.getStateName(conn, id)
      console.log('name: ', name)
    } catch (err) {
      reject(err)
    } finally {
      db.returnConnection(conn)
    }
  })
}
