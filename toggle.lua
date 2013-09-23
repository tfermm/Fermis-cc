local side = "back"
redstone.setOutput(side, true)
while true do
	if redstone.getInput("bottom") then
		redstone.setOutput(side, false)
		if side == "back" then
			side = "right"
		elseif side == "right" then
			side = "front"
		elseif side = "front" then
			side = "left"
		elseif side = "left"
			side = "back"
		end
		redstone.setOutput(side, true)
	end
	os.sleep(1)
end
