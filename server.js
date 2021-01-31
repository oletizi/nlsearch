const db = require('./lib/db')
const express = require("express");
const app = express();
//app.get("/jobs/creation")

app.get("/hello", (req, res) => {
  res.json({greeting: 'hello'})
})

// find the avg job creation by county  between :minYear and :maxYear with at least :minJobs created
app.get('/jobs/creation/:minJobs/:minYear/:maxYear', (req, res, next) => {
  const minJobs = req.params.minJobs
  const minYear = req.params.minYear
  const maxYear = req.params.maxYear

  const conn = db.getConnection()
  db.getJobCreationRange(conn, minJobs, minYear, maxYear).then((rs) => {
    res.json(rs)
  })
    .catch((err) => next(err))
    .finally(() => db.returnConnection(conn))
})

app.listen(3000, () => {
  console.log("Server running on port 3000");
});
