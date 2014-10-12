<h4>Getting Started</h4>
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
exit()
```
What the bootstrap does

The bootstrap will grab any and all of the lua files I have in GitHub and will put them on your turtle in the fermis-cc directory

To run the bootstrap type this

```lua
fermis-cc/bootstrap
```

<h4>Scripts</h4>

<h5>harvester.lua</h5>

This lua script is ment to hover over crops and patroll a field.
When a crop is grown it will break it and replace it.

There is a list of crops the turtle will harvest currently hard coded in.

Supported seeds:

Magical Crops
Minecraft Crops

<h4>TODO:</h4>
<ul>
<li>Finish adding in Magical crops seeds into the whitelist</li>
<li>make whitelist configurable</li>
<li>finish adding in minecraft seeds</li>
<li>format this read me stuff</li>
</ul>
<h4>Known bugs</h4>
When the turtle goes over a non-whitelisted item the program crashes
