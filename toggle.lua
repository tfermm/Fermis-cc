local side = "back"
redstone.setOutput(side, true)
while true do
	if redstone.getInput("bottom") then
		redstone.setOutput(side, false)
		if side == "back" then
			side = "right"
		else if side == "right" then
			side = "front"
		else if side = "front" then
			side = "left"
		else if side = "left"
			side = "back"
		end
		redstone.setOutput(side, true)
	end
	os.sleep(0.5)
end
