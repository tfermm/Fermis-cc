<h1>Getting Started</h1>
<br>
<br>
<p>Right click your turtle<br>
type without quotes "lua"<br>
<br>
Take the following lines and copy paste them into the turtle one by one then press enter<br></p>
```lua
fs.makeDir("/fermis-cc")
bootstrap = fs.open("/fermis-cc/bootstrap", "w")
bootstrapConnection = http.get("https://raw.githubusercontent.com/tfermm/Fermis-cc/master/bootstrab.lua")
bootstrap.write(bootstrapConnection.readAll())
bootstrapConnection.close()
bootstrap.close()
```
type without quotes "fermis-cc/bootstrap"
This will grab any and all of the lua files I have here and will put them on your turtle
They will be in the fermis-cc directory

harvester.lua

This lua script is ment to hover over crops and patroll a field.
When a crop is grown it will break it and replace it.

There is a list of crops the turtle will harvest currently hard coded in.

Supported seeds:

Magical Crops
Minecraft Crops

TODO:
Finish adding in Magical crops seeds into the whitelist
make whitelist configurable
finish adding in minecraft seeds
format this read me stuff

**Known bugs**
When the turtle goes over a non-whitelisted item the program crashes
