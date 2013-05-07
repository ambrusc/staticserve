express = require("express")
app = express()
port = parseInt(process.env.PORT, 10) or 1337

app.configure(() ->
  app.use(express.static(__dirname + "/public"))
  app.use(express.errorHandler(
      dumpExceptions: true
      showStack: true
    )
  )
)

console.log("accepting http on port #{port}")
app.listen(port)
