
fs.makeDir("/fermis-cc")
bootstrap = fs.open("/fermis-cc/bootstrap", "w")
bootstrapConnection = http.get("http://fermis.me/fermis-cc/bootstrap.lua")

assert(bootstrap, "Unable to save installer to disk! Please make sure your in-game computer has space available and try again!")
assert(bootstrapConnection, "Unable to download installer components! Is your internet working? See if you can access https://raw.github.com/damien/cc-scripts/master/bootstrap.lua")

bootstrap.write(bootstrapConnection.readAll())
bootstrapConnection.close()
bootstrap.close()

bootstrap = fs.open("/fermis-cc/bootstrap", "w")
bootstrapConnection = http.get("http://fermis.me/fermis-cc/test.lua")

bootstrap.write(bootstrapConnection.readAll())
bootstrapConnection.close()
bootstrap.close()


