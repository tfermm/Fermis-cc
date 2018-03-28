-- Globals
recipe = {}
recipe_items = {}

function save_recipe()
	for i = 1,16,1 do
		data = turtle.getItemDetail(i)
		if not isEmpty(data) then
			name = data.name
			if not isEmpty(recipe_items[name]) then
				recipe_items[name] = name
			end
			recipe[i] = name
		end
	end
end

function isEmpty(a)
	if (a == nil or a == '') then
		return true
	else
		return false
	end
end

function in_recipe(i)
		data = turtle.getItemDetail(i)
		if not isEmpty(data) then
			name = data.name
			if isEmpty(recipe_items[name]) then
				return false	
			end
			return true
		end
end

function empty_inv(empty_direction)
	if empty_direction == "up" then
		-- empty up
		for i = 1,16,1 do
			if not in_recipe(i) then
				turtle.select(i)
				turtle.dropUp()		
			end
		end
	else
		-- empty down
		for i = 1,16,1 do
			if not in_recipe(i) then
				turtle.select(i)
				turtle.dropDown()
			end
		end
	end
end

-- 1,2,5,6 are the crafting area save these items
save_recipe()

while true do
	turtle.select(1)
	turtle.suckDown()
	data = turtle.getItemDetail(1)
	count = data.count
	if count >= 4 then
		stackCt = math.floor(count/4)
		turtle.transferTo(2, stackCt)
		turtle.transferTo(5, stackCt)
		turtle.transferTo(6, stackCt)
		turtle.craft()
		empty_inv("up")
	end
end
