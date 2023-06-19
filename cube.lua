cube = {}
function cube.genCube(a)
	local cube = {}
	local side_index = 1

	while side_index ~= 7 do
		local side = {}
		local side_element_number = a^2
		local side_element_index = 1
		
		while side_element_index ~= 1 + a^2 do
			side[side_element_index] = 0
			side_element_index = side_element_index + 1
		end

		cube[side_index] = side
		side_index = side_index + 1
		  
	end

	return cube
end
function cube.printCube(cube)
	local side_index = 1

	for k, v in pairs(cube) do
		print(tostring(side_index)..")")
		
		local elements_til_end = ((#v)^(1/2))-1
		local side = ""

		for k2, v2 in pairs(v) do
			side = side .. "[" .. tostring(v2) .. "]"
			if elements_til_end == 0 then
				elements_til_end = (#v)^(1/2)
				side = side .. "\n"
			end
			elements_til_end = elements_til_end - 1
			
		end
		print(side)

		side_index = side_index + 1
	end
end
function cube.changeElement(cube, site, id, newValue)
	cube[site][id] = newValue
	return cube
end

return cube
