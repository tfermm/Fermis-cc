-- global vars
length = 13
width = 18
start_pos_x = 0 
start_pos_y = -1
pos_x = start_pos_x
pos_y = start_pos_y
turtle_meta = {}
current_seed = ""
current_plant = ""
reverse_dir = 0
-- default the turtle clears forward and to the left
-- with reverse_dir it will mirror on the other side

north = 1
east = 2
south = 3
west = 4

direction = 1
-- direction is 1 - 4
-- 1 is the origional way the turtle faces
-- 2 is facing right 
-- 3 is opposite of 1, facing behind the origional direction
-- 4 is facing left

crops = {}

crops['seeds'] = seeds
crops['plants'] = plants

crops['convert'] = {}
crops['convert']['seed'] = {}
crops['convert']["minecraft:wheat"] = {}
crops['convert']["magicalcrops:magicalcrops_MagicCropCoal"] = {}
crops['convert']["magicalcrops:magicalcrops_ModMagicCropCopper"] = {}
crops['convert']["magicalcrops:magicalcrops_MagicCropDiamond"] = {}
crops['convert']["magicalcrops:magicalcrops_MagicCropEnder"] = {}
crops['convert']["magicalcrops:magicalcrops_MagicCropGlowstone"] = {}
crops['convert']["magicalcrops:magicalcrops_MagicCropGold"] = {}
crops['convert']["magicalcrops:magicalcrops_MagicCropIron"] = {}
crops['convert']["magicalcrops:magicalcrops_MagicCropLapis"] = {}
crops['convert']["magicalcrops:magicalcrops_MagicCropNether"] = {}
crops['convert']["magicalcrops:magicalcrops_MagicCropRedstone"] = {}
crops['convert']["magicalcrops:magicalcrops_ModMagicCropRubber"] = {}
crops['convert']["magicalcrops:magicalcrops_ModMagicCropTin"] = {}
crops['convert']["magicalcrops:magicalcrops_ModMagicCropUranium"] = {}
crops['convert']["magicalcrops:magicalcrops_MagicCropObsidian"] = {}
crops['convert']["magicalcrops:magicalcrops_ModMagicCropQuartz"] = {}
crops['convert']["magicalcrops:magicalcrops_ElementCropEarth"] = {}
crops['convert']["magicalcrops:magicalcrops_ElementCropWater"] = {}
crops['convert']["magicalcrops:magicalcrops_MagicCropEssence"] = {}
crops['convert']["magicalcrops:magicalcrops_SoulCropGhast"] = {}
crops['convert']["magicalcrops:magicalcrops_SoulCropSlime"] = {}
crops['convert']["magicalcrops:magicalcrops_ModMagicCropSilver"] = {}
crops['convert']["magicalcrops:magicalcrops_SoulCropSpider"] = {}
 

crops['convert']["minecraft:wheat"]['seed'] = "minecraft:wheat_seeds"
crops['convert']["magicalcrops:magicalcrops_MagicCropCoal"]['seed'] = "magicalcrops:magicalcrops_MagicSeedsCoal"
crops['convert']["magicalcrops:magicalcrops_ModMagicCropCopper"]['seed'] = "magicalcrops:magicalcrops_ModMagicSeedsCopper"
crops['convert']["magicalcrops:magicalcrops_MagicCropDiamond"]['seed'] = "magicalcrops:magicalcrops_MagicSeedsDiamond"
crops['convert']["magicalcrops:magicalcrops_MagicCropEnder"]['seed'] = "magicalcrops:magicalcrops_MagicSeedsEnder"
crops['convert']["magicalcrops:magicalcrops_MagicCropGlowstone"]['seed'] = "magicalcrops:magicalcrops_MagicSeedsGlowstone"
crops['convert']["magicalcrops:magicalcrops_MagicCropGold"]['seed'] = "magicalcrops:magicalcrops_MagicSeedsGold"
crops['convert']["magicalcrops:magicalcrops_MagicCropIron"]['seed'] = "magicalcrops:magicalcrops_MagicSeedsIron"
crops['convert']["magicalcrops:magicalcrops_MagicCropLapis"]['seed'] = "magicalcrops:magicalcrops_MagicSeedsLapis"
crops['convert']["magicalcrops:magicalcrops_MagicCropNether"]['seed'] = "magicalcrops:magicalcrops_MagicSeedsNether"
crops['convert']["magicalcrops:magicalcrops_MagicCropRedstone"]['seed'] = "magicalcrops:magicalcrops_MagicSeedsRedstone"
crops['convert']["magicalcrops:magicalcrops_ModMagicCropRubber"]['seed'] = "magicalcrops:magicalcrops_ModMagicSeedsRubber"
crops['convert']["magicalcrops:magicalcrops_ModMagicCropTin"]['seed'] = "magicalcrops:magicalcrops_ModMagicSeedsTin"
crops['convert']["magicalcrops:magicalcrops_ModMagicCropSilver"]['seed'] = "magicalcrops:magicalcrops_ModMagicSeedsSilver"
crops['convert']["magicalcrops:magicalcrops_MagicCropObsidian"]['seed'] = "magicalcrops:magicalcrops_MagicSeedsObsidian"
crops['convert']["magicalcrops:magicalcrops_ModMagicCropUranium"]['seed'] = "magicalcrops:magicalcrops_ModMagicSeedsUranium"
crops['convert']["magicalcrops:magicalcrops_ModMagicCropQuartz"]['seed'] = "magicalcrops:magicalcrops_ModMagicSeedsQuartz"
crops['convert']["magicalcrops:magicalcrops_ElementCropEarth"]['seed'] = "magicalcrops:magicalcrops_ElementSeedsEarth"
crops['convert']["magicalcrops:magicalcrops_ElementCropWater"]['seed'] = "magicalcrops:magicalcrops_ElementSeedsWater"
crops['convert']["magicalcrops:magicalcrops_MagicCropEssence"]['seed'] = "magicalcrops:magicalcrops_MagicSeedsEssence"
crops['convert']["magicalcrops:magicalcrops_SoulCropGhast"]['seed'] = "magicalcrops:magicalcrops_SoulSeedsGhast"
crops['convert']["magicalcrops:magicalcrops_SoulCropSlime"]['seed'] = "magicalcrops:magicalcrops_SoulSeedsSlime"
crops['convert']["magicalcrops:magicalcrops_SoulCropSpider"]['seed'] = "magicalcrops:magicalcrops_SoulSeedsSpider"

crops['convert']["minecraft:wheat"]['damage'] = 0
crops['convert']["magicalcrops:magicalcrops_MagicCropCoal"]['damage'] = 11
crops['convert']["magicalcrops:magicalcrops_ModMagicCropCopper"]['damage'] = 7
crops['convert']["magicalcrops:magicalcrops_MagicCropDiamond"]['damage'] = 3
crops['convert']["magicalcrops:magicalcrops_MagicCropEnder"]['damage'] = 9
crops['convert']["magicalcrops:magicalcrops_MagicCropGlowstone"]['damage'] = 2
crops['convert']["magicalcrops:magicalcrops_MagicCropGold"]['damage'] = 5
crops['convert']["magicalcrops:magicalcrops_MagicCropIron"]['damage'] = 4
crops['convert']["magicalcrops:magicalcrops_MagicCropLapis"]['damage'] = 6
crops['convert']["magicalcrops:magicalcrops_MagicCropNether"]['damage'] = 14
crops['convert']["magicalcrops:magicalcrops_MagicCropRedstone"]['damage'] = 1 
crops['convert']["magicalcrops:magicalcrops_ModMagicCropRubber"]['damage'] = 17
crops['convert']["magicalcrops:magicalcrops_ModMagicCropTin"]['damage'] = 6
crops['convert']["magicalcrops:magicalcrops_ModMagicCropUranium"]['damage'] = 0
crops['convert']["magicalcrops:magicalcrops_ModMagicCropQuartz"]['damage'] = 4
crops['convert']["magicalcrops:magicalcrops_ElementCropEarth"]['damage'] = 2
crops['convert']["magicalcrops:magicalcrops_ElementCropWater"]['damage'] = 0
crops['convert']["magicalcrops:magicalcrops_MagicCropEssence"]['damage'] = 7
crops['convert']["magicalcrops:magicalcrops_MagicCropObsidian"]['damage'] = 7
crops['convert']["magicalcrops:magicalcrops_SoulCropGhast"]['damage'] = 6
crops['convert']["magicalcrops:magicalcrops_SoulCropSlime"]['damage'] = 7
crops['convert']["magicalcrops:magicalcrops_SoulCropSpider"]['damage'] = 7
crops['convert']["magicalcrops:magicalcrops_ModMagicCropSilver"]['damage'] = 7

crops['convert']["minecraft:wheat"]['name'] = "minecraft:wheat"
crops['convert']["magicalcrops:magicalcrops_MagicCropCoal"]['name'] = "magicalcrops:magicalcrops_MagicCropCoal"
crops['convert']["magicalcrops:magicalcrops_MagicCropDiamond"]['name'] = "magicalcrops:magicalcrops_MagicCropDiamond"
crops['convert']["magicalcrops:magicalcrops_MagicCropEnder"]['name'] = "magicalcrops:magicalcrops_MagicCropEnder"
crops['convert']["magicalcrops:magicalcrops_MagicCropGlowstone"]['name'] = "magicalcrops:magicalcrops_MagicCropGlowstone"
crops['convert']["magicalcrops:magicalcrops_MagicCropGold"]['name'] = "magicalcrops:magicalcrops_MagicCropGold"
crops['convert']["magicalcrops:magicalcrops_MagicCropIron"]['name'] = "magicalcrops:magicalcrops_MagicCropIron"
crops['convert']["magicalcrops:magicalcrops_MagicCropLapis"]['name'] = "magicalcrops:magicalcrops_MagicCropLapis"
crops['convert']["magicalcrops:magicalcrops_MagicCropNether"]['name'] = "magicalcrops:magicalcrops_MagicCropNether"
crops['convert']["magicalcrops:magicalcrops_MagicCropObsidian"]['name'] = "magicalcrops:magicalcrops_MagicCropObsidian"
crops['convert']["magicalcrops:magicalcrops_MagicCropRedstone"]['name'] = "magicalcrops:magicalcrops_MagicCropRedstone"
crops['convert']["magicalcrops:magicalcrops_ModMagicCropRubber"]['name'] = "magicalcrops:magicalcrops_ModMagicCropRubber"
crops['convert']["magicalcrops:magicalcrops_ModMagicCropUranium"]['name'] = "magicalcrops:magicalcrops_ModMagicCropUranium"
crops['convert']["magicalcrops:magicalcrops_MagicCropEssence"]['name'] = "magicalcrops:magicalcrops_MagicCropEssence"
crops['convert']["magicalcrops:magicalcrops_ModMagicCropQuartz"]['name'] = "magicalcrops:magicalcrops_ModMagicCropQuartz"
crops['convert']["magicalcrops:magicalcrops_ElementCropEarth"]['name'] = "magicalcrops:magicalcrops_ElementCropEarth"
crops['convert']["magicalcrops:magicalcrops_ElementCropWater"]['name'] = "magicalcrops:magicalcrops_ElementCropWater" 
crops['convert']["magicalcrops:magicalcrops_SoulCropGhast"]['name'] = "magicalcrops:magicalcrops_SoulCropGhast"
crops['convert']["magicalcrops:magicalcrops_SoulCropSlime"]['name'] = "magicalcrops:magicalcrops_SoulCropSlime"

function isEmpty(a)
	if (a == nil or a == '') then
		return true
	else
		return false
	end
end

function populate_metadata()
	local success
	local metadata
	success, metadata = turtle.inspectDown()
	if success then
		turtle_meta = metadata['metadata']
		current_crop =  metadata['name']
		if pcall(in_whitelist,current_crop) then
			current_seed = crops['convert'][current_crop]['seed']
			return success, metadata
		else
			return false
		end
	else
		return success
	end
end

function in_whitelist(current_crop)
	if crops['convert'][current_crop]['seed'] then
		return true
	else
		return false
	end
end

-- break the plant then replace the seed with the appropiate one
function break_plant()
	success, metadata = populate_metadata()
	if success then
		if crop_is_grown() then
			turtle.select(1)
			turtle.digDown()
			return true
		end
	end
	return false
end

function plant_seed()
	local inventory_spot = locate_seed()
	if (inventory_spot) then
		turtle.select(inventory_spot)
		turtle.placeDown()
		return true
	end
	return false
end

function crop_is_grown()
	if turtle_meta == 7 then
		return true
	end
	return false
end

function locate_seed()
	-- returns the inventory place for the seeds of the plant that was just broken
	local data = {}
--	data = turtle.getItemDetail()


	-- local seed_details = turtle.getItemDetail(1)
	for i = 1,16,1 do
		data = turtle.getItemDetail(i)
		if not isEmpty(data) then
			if data.name == current_seed then
				return i
			end
		end
	end
	return false
end

-- direction is 1 - 4
-- 1 is the origional way the turtle faces
-- 2 is facing right 
-- 3 is opposite of 1, facing behind the origional direction
-- 4 is facing left



function rotate(end_dir)
	
	start = direction

	if start == end_dir then
		return true
	end

	local difference = end_dir - start

	if difference == 3 then
		-- turn left
		turtle.turnLeft()
	elseif difference == -3 then
		-- turn right
		turtle.turnRight()
	elseif difference == 1 then
		-- turn right
		turtle.turnRight()
	elseif difference == -1 then
		-- turn left
		turtle.turnLeft()
	elseif difference == 2 or difference == -2 then
		-- turn twice
		turtle.turnRight()
		turtle.turnRight()
	end
	direction = end_dir	
	return true

end


-- if used wrong it might break the pathing of the turtle
-- currently no checks to see if this stays in the field
function move(length, dir)
	rotate(dir)
	local x = 0
	if reverse_dir == 0 then
		while x < length do
			if is_full() == false then
				if break_plant() then
					plant_seed()
				end
			end
			if turtle.forward() then
				x = x + 1
				if dir == 1 then
					pos_y = pos_y + 1
				elseif dir == 3 then
					pos_y = pos_y - 1
				elseif dir == 2 then
					pos_x = pos_x - 1
				elseif dir == 4 then
					pos_x = pos_x + 1
				end
			end
		end
	else
		while x < length do
			if is_full() == false then
				if break_plant() then
					plant_seed()
				end
			end
			if turtle.forward() then
				x = x + 1
				if dir == 1 then
					pos_y = pos_y + 1
				elseif dir == 3 then
					pos_y = pos_y - 1
				elseif dir == 2 then
					pos_x = pos_x + 1
				elseif dir == 4 then
					pos_x = pos_x - 1
				end
			end
		end
	end
	return true

end

function auto_move()
	-- check position to see if it needs to go to the next row or return to the start
	if reverse_dir == 0 then
		if pos_y == length - 1 and direction == north then
			if pos_x == width - 1 then
				-- return to the start
				move(pos_x, east)
				move(pos_y, south)
				rotate(south)
			else
				-- turn around
				if direction == 1 then
					move(1,west)
					rotate(south)
				end
			end
		elseif pos_y == 0 and direction == south then
			if pos_x == width - 1 then
				-- return to start
				move(pos_x, east)
				rotate(north)
			else
				move(1,west)
				rotate(north)
			end
		else
			move(1,direction)
		end
	else
		if pos_y == length - 1 and direction == north then
			if pos_x == width - 1 then
				-- return to the start
				move(pos_x, west)
				move(pos_y, south)
				rotate(south)
			else
				-- turn around
				if direction == 1 then
					move(1,east)
					rotate(south)
				end
			end
		elseif pos_y == 0 and direction == south then
			if pos_x == width - 1 then
				-- return to start
				move(pos_x, west)
				rotate(north)
			else
				move(1,east)
				rotate(north)
			end
		else
			move(1,direction)
		end
	end
end

-- Checks to see if there are any empty inventory spots
function inv_free()
	ct2 = 0
	local ct = 0
	for i = 1,16,1 do
		ct = turtle.getItemCount(i)
		if ct == 0 then
			ct2 = ct2 + 1
		end
	end
	return ct2
end

function empty_inv(empty_direction)
	if empty_direction == "up" then
		-- empty up
		for i = 1,16,1 do
			turtle.select(i)
			turtle.dropUp()		
		end
	else
		-- empty down
		for i = 1,16,1 do
			turtle.select(i)
			turtle.dropDown()
		end
	end
	
end

-- returns to the starting position and deposits the inventory
function deposit_inv()
	-- TODO make deposit spot configurable 
	-- save all information related to our position
	local return_x = pos_x
	local return_y = pos_y
	local return_direction = direction

	if reverse_dir == 0 then
		-- return to (0,0)
		move(pos_x, east)
		move(pos_y, south)

		-- go one down to chest location
		move(1, south)
		empty_inv("down")

		-- return to the spot where we started
		move(1,1)
		move(return_x, west)
		move(return_y, north)
		rotate(return_direction)
	else
		-- return to (0,0)
		move(pos_x, west)
		move(pos_y, south)

		-- go one down to chest location
		move(1, south)
		empty_inv("down")

		-- return to the spot where we started
		move(1,1)
		move(return_x, east)
		move(return_y, north)
		rotate(return_direction)
	end
end

function is_full()
	local full_1 = false
	local slots_open_1 = inv_free()
	if slots_open_1 > -1 and slots_open_1 < 2 then
		full_1 = true
	end
	return full_1
end

local run_it = true
local var_test = 0
local slots_open = 16

while run_it do
	-- slots_open = inv_free()
	-- if slots_open > -1 and slots_open < 2 then
	if is_full() == true then
		deposit_inv()
	end
	auto_move()
	if break_plant() then
		plant_seed()
	end
end
