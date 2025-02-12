const express = require('express')
const app = express()
const port = 3000

let movie ={ 
 name: `amit1`,
 time :"10 min"
}

app.get('/', (req, res) => {
  res.send(movie)
})

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})