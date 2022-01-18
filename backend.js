const express = require('express')
var cors = require('cors')
const app = express()
const port = 3000


app.use(express.static('pics'))
app.use(cors())
app.use(express.json())

app.get('/', (req, res) => {
  res.send('Hello World!')
})

app.get('/kerdesek', (req, res) => {
    var mysql = require('mysql')
    var connection = mysql.createConnection({
      host: 'localhost',
      user: 'root',
      password: '',
      database: 'foci'
    })
    
    connection.connect()
    
    connection.query('SELECT * from kerdesek', function (err, rows, fields) {
      if (err) throw err
    
      console.log(rows)

      res.send(rows)
    })
    
    connection.end()    

  })

  app.post('/beerkezett', (req, res) => {
    var mysql = require('mysql')
    var connection = mysql.createConnection({
      host: 'localhost',
      user: 'root',
      password: '',
      database: 'foci'
    })
    
    connection.connect()
    
    let dt=new Date();
    let teljesdat=dt.getFullYear()+"-"+  (dt.getMonth()+1)   +"-"+dt.getDate();
    connection.query("INSERT INTO beerkezett VALUES (NULL, '"+req.body.beviteltomb[1]+"', '"+req.body.beviteltomb[2]+"','"+req.body.beviteltomb[3]+"','"+req.body.beviteltomb[4]+"','"+req.body.beviteltomb[5]+"','"+req.body.beviteltomb[6]+"','"+req.body.beviteltomb[7]+"','"+req.body.beviteltomb[8]+"','"+req.body.beviteltomb[9]+"','"+req.body.beviteltomb[10]+"','"+req.body.bevitel1+"', '"+teljesdat+"') ", function (err, rows, fields) {
      if (err) throw err
    
      console.log("Sikeres kitoltes!")

      res.send("Sikeres kitoltes!")
    })
    
    connection.end()    

  })  



app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`)
})