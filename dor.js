const express = require('express')
const app = express()
const port = 3000

let movie ={ 
 name: `amit0`,
 time :"10 min"
}
app.use(express.json());
app.get('/', (req, res) => {
  res.send(movie)
})

app.post('/movie', function(req, res) {
  console.log (req.body)
  movie= { 
    name: req.body.name,
    time: req.body.time

  }
  res.send(movie)
})

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})