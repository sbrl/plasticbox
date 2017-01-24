local function getpaletteidx(color)
	local aliases = {
		["pink"] = "light_red",
		["brown"] = "dark_orange",
	}

	local grayscale = {
		["white"] = 1,
		["light_grey"] = 2,
		["grey"] = 3,
		["dark_grey"] = 4,
		["black"] = 5,
	}

	local hues = {
		["red"] = 1,
		["orange"] = 2,
		["yellow"] = 3,
		["lime"] = 4,
		["green"] = 5,
		["aqua"] = 6,
		["cyan"] = 7,
		["skyblue"] = 8,
		["blue"] = 9,
		["violet"] = 10,
		["magenta"] = 11,
		["redviolet"] = 12,
	}

	local shades = {
		[""] = 1,
		["s50"] = 2,
		["light"] = 3,
		["medium"] = 4,
		["mediums50"] = 5,
		["dark"] = 6,
		["darks50"] = 7,
	}

	if string.sub(color,1,4) == "dye:" then
		color = string.sub(color,5,-1)
	elseif string.sub(color,1,12) == "unifieddyes:" then
		color = string.sub(color,13,-1)
	else
		return
	end

	color = aliases[color] or color

	if grayscale[color] then
		return(grayscale[color])
	end

	local shade = ""
	if string.sub(color,1,6) == "light_" then
		shade = "light"
		color = string.sub(color,7,-1)
	elseif string.sub(color,1,7) == "medium_" then
		shade = "medium"
		color = string.sub(color,8,-1)
	elseif string.sub(color,1,5) == "dark_" then
		shade = "dark"
		color = string.sub(color,6,-1)
	end
	if string.sub(color,-4,-1) == "_s50" then
		shade = shade.."s50"
		color = string.sub(color,1,-5)
	end

	if hues[color] and shades[shade] then
		return(hues[color] * 8 + shades[shade])
	end
end

minetest.register_node("plasticbox:plasticbox", {
	description = "Plastic Box",
	tiles = {"plasticbox_white.png"},
	is_ground_content = false,
	groups = {choppy=1, snappy=1, oddly_breakable_by_hand=1},
	sounds = default.node_sound_stone_defaults(),
	paramtype2 = "color",
	palette = "plasticbox_ud_palette.png",
	on_destruct = function(pos)
		local meta = minetest.get_meta(pos)
		local prevdye = meta:get_string("dye")
		if minetest.registered_items[prevdye] then
			minetest.add_item(pos,prevdye)
		end
	end,
	on_rightclick = function(pos,node,player,stack)
		local name = player:get_player_name()
		if minetest.is_protected(pos,name) and not minetest.check_player_privs(name,{protection_bypass=true}) then
			minetest.record_protection_violation(pos,name)
			return stack
		end
		local name = stack:get_name()
		local paletteidx = getpaletteidx(name)
		if paletteidx then
			local meta = minetest.get_meta(pos)
			local prevdye = meta:get_string("dye")
			if minetest.registered_items[prevdye] then
				local inv = player:get_inventory()
				if inv:room_for_item("main",prevdye) then
					inv:add_item("main",prevdye)
				else
					minetest.add_item(pos,prevdye)
				end
			end
			meta:set_string("dye",name)
			stack:take_item()
			node.param2 = paletteidx
			minetest.swap_node(pos,node)
		end
	end,
})

stairsplus:register_all("plasticbox", "plasticbox", "plasticbox:plasticbox", {
	description = "Plastic",
	tiles = {"plasticbox_white.png"},
	groups = {choppy=1, snappy=1, oddly_breakable_by_hand=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craft( {
        output = "plasticbox:plasticbox 4",
        recipe = {
                { "homedecor:plastic_sheeting", "homedecor:plastic_sheeting", "homedecor:plastic_sheeting" },
                { "homedecor:plastic_sheeting", "", "homedecor:plastic_sheeting" },
                { "homedecor:plastic_sheeting", "homedecor:plastic_sheeting", "homedecor:plastic_sheeting" }
        },
})

minetest.register_lbm({
	name = "plasticbox:convert_colors",
	label = "Convert plastic boxes to use param2 color",
	nodenames = {
			"plasticbox:plasticbox_black",
			"plasticbox:plasticbox_blue",
			"plasticbox:plasticbox_brown",
			"plasticbox:plasticbox_cyan",
			"plasticbox:plasticbox_green",
			"plasticbox:plasticbox_grey",
			"plasticbox:plasticbox_magenta",
			"plasticbox:plasticbox_orange",
			"plasticbox:plasticbox_pink",
			"plasticbox:plasticbox_red",
			"plasticbox:plasticbox_violet",
			"plasticbox:plasticbox_white",
			"plasticbox:plasticbox_yellow",
			"plasticbox:plasticbox_darkgreen",
			"plasticbox:plasticbox_darkgrey",
		},
	action = function(pos,node)
		local conv = {
			["black"] = 5,
			["blue"] = 73,
			["brown"] = 22,
			["cyan"] = 57,
			["green"] = 41,
			["grey"] = 3,
			["magenta"] = 89,
			["orange"] = 17,
			["pink"] = 11,
			["red"] = 9,
			["violet"] = 81,
			["white"] = 1,
			["yellow"] = 25,
			["darkgreen"] = 46,
			["darkgrey"] = 4,
		}
		local name = node.name
		local oldcolor = string.sub(name,string.len("plasticbox:plasticbox_-"),-1)
		node.name = "plasticbox:plasticbox"
		if conv[oldcolor] then node.param2 = conv[oldcolor] end
		minetest.set_node(pos,node)
	end,
})
