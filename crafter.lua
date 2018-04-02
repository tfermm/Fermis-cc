-- Globals
recipe = {}

function dump(o)
   if type(o) == 'table' then
      local s = '{ '
      for k,v in pairs(o) do
         if type(k) ~= 'number' then k = '"'..k..'"' end
         s = s .. '['..k..'] = ' .. dump(v) .. ','
      end
      return s .. '} '
   else
      return tostring(o)
   end
end

function save_recipe()
	recipe = {}
	for i = 1,16,1 do
		data = turtle.getItemDetail(i)
		if not is_empty(data) then
			name = data.name
			recipe[i] = name
		end
	end
end

function is_empty(a)
	if (a == nil or a == '') then
		return true
	else
		return false
	end
end

function in_recipe(i)
		data = turtle.getItemDetail(i)
		if i < 2 then
		end
		if not is_empty(data) then
			name = data.name
			for k, v in pairs(recipe) do
				if name == v then
					return true
				end
			end
			return false
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

function dump_inv(empty_direction)
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

function move_to_first_slot()
	for i = 1,16,1 do
		if in_recipe(i) then
			turtle.select(i)
			turtle.transferTo(1)
		end
	end
end

function process()
	local data = turtle.getItemDetail(1)
	if not is_empty(data) then
		count = data.count
		if count >= 4 then
			-- white list the items we are using to craft so we can deposit the crafted materials
			save_recipe()
			stackCt = math.floor(count/4)
			turtle.transferTo(2, stackCt)
			turtle.transferTo(5, stackCt)
			turtle.transferTo(6, stackCt)
			turtle.craft()
			empty_inv("up")
			turtle.select(1)
		end
	end
end

while true do
	dump_inv("down")
	turtle.select(1)
	turtle.suckDown()
	process()
end
