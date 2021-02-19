local Set = script.Parent

local Llama = Set.Parent
local t = require(Llama.t)

local validate = t.table

local function union(...)
	local new = {}

	for i = 1, select('#', ...) do
		local set = select(i, ...)

		assert(validate(set))

		for k, _ in pairs(set) do
			new[k] = true
		end
	end

	return new
end

return union