<h4>Getting Started</h4>
<p>Right click your turtle<br>
<br>
Take the following lines and copy paste them into the turtle one by one then press enter<br></p>
```lua
lua
fs.makeDir("/fermis-cc")
bootstrap = fs.open("/fermis-cc/bootstrap", "w")
bootstrapConnection = http.get("https://raw.githubusercontent.com/tfermm/Fermis-cc/master/bootstrab.lua")
bootstrap.write(bootstrapConnection.readAll())
bootstrapConnection.close()
bootstrap.close()
exit()
fermis-cc/bootstrap
```
What the bootstrap does

The bootstrap will grab any and all of the lua files I have in GitHub and will put them on your turtle in the fermis-cc directory

<h4>Scripts</h4>

<h5>harvester</h5>

To run the harvester right click your turtle and type in the following

```lua
fermis-cc/harvester
```

harvester.lua on github 

<h6>Desctiption</h6>
This lua script is ment to hover over crops and patroll a field.
When a crop is grown it will break it and replace it.

There is a list of crops the turtle will harvest currently hard coded in.

Supported seeds:

Magical Crops
<ul>
<li>Coal</li>
<li>Diamond</li>
<li>Ender</li>
<li>Glowstone</li>
<li>Gold</li>
<li>Iron</li>
<li></li>
</ul>

Minecraft Crops
<ul>
<li>Wheat</li>
</ul>
<h4>TODO:</h4>
<ul>
<li>Finish adding in Magical crops seeds into the whitelist</li>
<li>make whitelist configurable</li>
<li>finish adding in minecraft seeds</li>
<li>format this read me stuff</li>
</ul>
<h4>Known bugs</h4>
When the turtle goes over a non-whitelisted item the program crashes
