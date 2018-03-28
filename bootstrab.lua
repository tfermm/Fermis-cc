
fs.makeDir("/fermis-cc")
bootstrap = fs.open("/fermis-cc/bootstrap", "w")
bootstrapConnection = http.get("https://raw.githubusercontent.com/tfermm/Fermis-cc/master/bootstrab.lua")

assert(bootstrap, "Unable to save installer to disk! Please make sure your in-game computer has space available and try again!")
assert(bootstrapConnection, "Unable to download installer components! Is your internet working? See if you can access https://raw.github.com/damien/cc-scripts/master/bootstrap.lua")

bootstrap.write(bootstrapConnection.readAll())
bootstrapConnection.close()
bootstrap.close()

harvester = fs.open("/fermis-cc/harvester", "w")
harvesterConnection = http.get("https://raw.githubusercontent.com/tfermm/Fermis-cc/master/harvester.lua")

harvester.write(harvesterConnection.readAll())
harvesterConnection.close()
harvester.close()

2x2crafter = fs.open("/fermis-cc/2x2crafter", "w")
2x2crafterConnection = http.get("https://raw.githubusercontent.com/tfermm/Fermis-cc/master/2x2crafter.lua")

2x2crafter.write(2x2crafterConnection.readAll())
2x2crafterConnection.close()
2x2crafter.close()
