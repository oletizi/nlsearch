const mysql      = require('mysql')
const fs = require('fs')
const conn = mysql.createConnection({
  host     : 'localhost',
  user     : 'bds',
  password : 'bds',
  database : 'bds'
});

// conn.connect()
let files = fs.readdirSync('./data/');
files.forEach((file) => {
  if (file.endsWith('.csv')) {
    console.log("found a csv!")
    console.
  }
})

// conn.query("show tables", (err, results, fields) => {
//   if (err) {throw err}
//   console.log(results)
// })
// conn.end()

