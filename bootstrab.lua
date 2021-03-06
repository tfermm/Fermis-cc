
fs.makeDir("/fermis-cc")
bootstrap = fs.open("/fermis-cc/bootstrap", "w")
bootstrapConnection = http.get("https://raw.githubusercontent.com/tfermm/Fermis-cc/master/bootstrab.lua")

assert(bootstrap, "Unable to save installer to disk! Please make sure your in-game computer has space available and try again!")
assert(bootstrapConnection, "Unable to download installer components! Is your internet working? See if you can access https://raw.githubusercontent.com/tfermm/Fermis-cc/master/bootstrab.lua")

bootstrap.write(bootstrapConnection.readAll())
bootstrapConnection.close()
bootstrap.close()

harvester = fs.open("/fermis-cc/harvester", "w")
harvesterConnection = http.get("https://raw.githubusercontent.com/tfermm/Fermis-cc/master/harvester.lua")

harvester.write(harvesterConnection.readAll())
harvesterConnection.close()
harvester.close()

crafter = fs.open("/fermis-cc/crafter", "w")
crafterConnection = http.get("https://raw.githubusercontent.com/tfermm/Fermis-cc/master/crafter.lua")

crafter.write(crafterConnection.readAll())
crafterConnection.close()
crafter.close()
