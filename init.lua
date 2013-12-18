plasticbox = {}
plasticbox.colorlist = {
        {"black", "Blakc Plastic Stairs"},
        {"blue", "Blue Plastic Stairs"},
        {"brown", "Brown Plastic Stairs"},
        {"cyan", "Cyan Plastic Stairs"},
        {"green", "Green Plastic Stairs"},
        {"grey", "Grey Plastic Stairs"},
        {"magenta", "Magenta Plastic Stairs"},
        {"orange", "Orange Plastic Stairs"},
        {"pink", "Pink Plastic Stairs"},
        {"red", "Red Plastic Stairs"},
        {"violet", "Violet Plastic Stairs"},
        {"white",  "White Plastic Stairs"},
        {"yellow", "Yellow Plastic Stairs"},
}



--Register Nodes, assign textures, blah, blah...
minetest.register_node("plasticbox:plasticbox", {
	description = "Plain Plastic Box",
	tiles = {"plasticbox.png"},
	is_ground_content = true,
	groups = {choppy=1, snappy=1, oddly_breakable_by_hand=1, level=1},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("plasticbox:plasticbox_black", {
	description = "Black Plastic Box",
	tiles = {"plasticbox_black.png"},
	is_ground_content = true,
	groups = {choppy=1, snappy=1, oddly_breakable_by_hand=1, level=1},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("plasticbox:plasticbox_blue", {
	description = "Blue Plastic Box",
	tiles = {"plasticbox_blue.png"},
	is_ground_content = true,
	groups = {choppy=1, snappy=1, oddly_breakable_by_hand=1, level=1},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("plasticbox:plasticbox_brown", {
	description = "Brown Plastic Box",
	tiles = {"plasticbox_brown.png"},
	is_ground_content = true,
	groups = {choppy=1, snappy=1, oddly_breakable_by_hand=1, level=1},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("plasticbox:plasticbox_cyan", {
	description = "Cyan Plastic Box",
	tiles = {"plasticbox_cyan.png"},
	is_ground_content = true,
	groups = {choppy=1, snappy=1, oddly_breakable_by_hand=1, level=1},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("plasticbox:plasticbox_darkgreen", {
	description = "Dark Green Plastic Box",
	tiles = {"plasticbox_darkgreen.png"},
	is_ground_content = true,
	groups = {choppy=1, snappy=1, oddly_breakable_by_hand=1, level=1},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("plasticbox:plasticbox_darkgrey", {
	description = "Dark Gray Plastic Box",
	tiles = {"plasticbox_darkgrey.png"},
	is_ground_content = true,
	groups = {choppy=1, snappy=1, oddly_breakable_by_hand=1, level=1},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("plasticbox:plasticbox_green", {
	description = "Green Plastic Box",
	tiles = {"plasticbox_green.png"},
	is_ground_content = true,
	groups = {choppy=1, snappy=1, oddly_breakable_by_hand=1, level=1},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("plasticbox:plasticbox_grey", {
	description = "Gray Plastic Box",
	tiles = {"plasticbox_grey.png"},
	is_ground_content = true,
	groups = {choppy=1, snappy=1, oddly_breakable_by_hand=1, level=1},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("plasticbox:plasticbox_magenta", {
	description = "Magenta Plastic Box",
	tiles = {"plasticbox_magenta.png"},
	is_ground_content = true,
	groups = {choppy=1, snappy=1, oddly_breakable_by_hand=1, level=1},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("plasticbox:plasticbox_orange", {
	description = "Orange Plastic Box",
	tiles = {"plasticbox_orange.png"},
	is_ground_content = true,
	groups = {choppy=1, snappy=1, oddly_breakable_by_hand=1, level=1},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("plasticbox:plasticbox_pink", {
	description = "Pink Plastic Box",
	tiles = {"plasticbox_pink.png"},
	is_ground_content = true,
	groups = {choppy=1, snappy=1, oddly_breakable_by_hand=1, level=1},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("plasticbox:plasticbox_red", {
	description = "Red Plastic Box",
	tiles = {"plasticbox_red.png"},
	is_ground_content = true,
	groups = {choppy=1, snappy=1, oddly_breakable_by_hand=1, level=1},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("plasticbox:plasticbox_violet", {
	description = "Violet Plastic Box",
	tiles = {"plasticbox_violet.png"},
	is_ground_content = true,
	groups = {choppy=1, snappy=1, oddly_breakable_by_hand=1, level=1},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("plasticbox:plasticbox_white", {
	description = "White Plastic Box",
	tiles = {"plasticbox_white.png"},
	is_ground_content = true,
	groups = {choppy=1, snappy=1, oddly_breakable_by_hand=1, level=1},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("plasticbox:plasticbox_yellow", {
	description = "Yellow Plastic Box",
	tiles = {"plasticbox_yellow.png"},
	is_ground_content = true,
	groups = {choppy=1, snappy=1, oddly_breakable_by_hand=1, level=1},
	sounds = default.node_sound_stone_defaults(),
})


--Register craft for plain box
minetest.register_craft( {
        output = "plasticbox:plasticbox 4",
        recipe = {
                { "homedecor:plastic_sheeting", "homedecor:plastic_sheeting", "homedecor:plastic_sheeting" },
                { "homedecor:plastic_sheeting", "", "homedecor:plastic_sheeting" },
                { "homedecor:plastic_sheeting", "homedecor:plastic_sheeting", "homedecor:plastic_sheeting" }
        },
})

--Register crafts for colored boxes
minetest.register_craft({
     type = "shapeless",
     output = 'plasticbox:plasticbox_black',
     recipe = {'plasticbox:plasticbox', 'group:basecolor_black'},
})
minetest.register_craft({
     type = "shapeless",
     output = 'plasticbox:plasticbox_blue',
     recipe = {'plasticbox:plasticbox', 'group:basecolor_blue'},
})
minetest.register_craft({
     type = "shapeless",
     output = 'plasticbox:plasticbox_brown',
     recipe = {'plasticbox:plasticbox', 'group:basecolor_brown'},
})
minetest.register_craft({
     type = "shapeless",
     output = 'plasticbox:plasticbox_cyan',
     recipe = {'plasticbox:plasticbox', 'group:basecolor_cyan'},
})
minetest.register_craft({
     type = "shapeless",
     output = 'plasticbox:plasticbox_green',
     recipe = {'plasticbox:plasticbox', 'group:basecolor_green'},
})
minetest.register_craft({
     type = "shapeless",
     output = 'plasticbox:plasticbox_grey',
     recipe = {'plasticbox:plasticbox', 'group:basecolor_grey'},
})
minetest.register_craft({
     type = "shapeless",
     output = 'plasticbox:plasticbox_magenta',
     recipe = {'plasticbox:plasticbox', 'group:basecolor_magenta'},
})
minetest.register_craft({
     type = "shapeless",
     output = 'plasticbox:plasticbox_orange',
     recipe = {'plasticbox:plasticbox', 'group:basecolor_orange'},
})
minetest.register_craft({
     type = "shapeless",
     output = 'plasticbox:plasticbox_pink',
     recipe = {'plasticbox:plasticbox', 'group:basecolor_pink'},
})
minetest.register_craft({
     type = "shapeless",
     output = 'plasticbox:plasticbox_red',
     recipe = {'plasticbox:plasticbox', 'group:basecolor_red'},
})
minetest.register_craft({
     type = "shapeless",
     output = 'plasticbox:plasticbox_violet',
     recipe = {'plasticbox:plasticbox', 'group:basecolor_violet'},
})
minetest.register_craft({
     type = "shapeless",
     output = 'plasticbox:plasticbox_white',
     recipe = {'plasticbox:plasticbox', 'group:basecolor_white'},
})
minetest.register_craft({
     type = "shapeless",
     output = 'plasticbox:plasticbox_yellow',
     recipe = {'plasticbox:plasticbox', 'group:basecolor_yellow'},
})


for i in ipairs(plasticbox.colorlist) do
        local colorname = plasticbox.colorlist[i][1]
        local desc = plasticbox.colorlist[i][2]

		if minetest.get_modpath("moreblocks") then
                        register_stair(
                                "plasticbox",
                                "plasticbox_"..colorname,
                                "plasticbox:plasticbox_"..colorname,
                                { snappy=1,choppy=2,oddly_breakable_by_hand=1,flammable=2 },
                                {        "plasticbox:plasticbox_"..colorname.."_stair.png",
                                },
                                "plasticbox_"..desc,
                                "plasticbox_"..colorname,
                                0
                        )
                        register_slab(
                                "plasticbox",
                                "plasticbox_"..colorname,
                                "plasticbox:plasticbox_"..colorname,
                                { snappy=1,choppy=2,oddly_breakable_by_hand=1,flammable=2 },
                                {        "plasticbox:plasticbox_"..colorname.."_stair.png",
                                },
                                "plasticbox_"..desc,
                                "plasticbox_"..colorname,
                                0
                        )

                        register_panel(
                                "plasticbox",
                                "plasticbox_"..colorname,
                                "plasticbox:plasticbox_"..colorname,
                                { snappy=1,choppy=2,oddly_breakable_by_hand=1,flammable=2 },
                                {        "plasticbox:plasticbox_"..colorname.."_stair.png",
                                },
                                "plasticbox_"..desc,
                                "plasticbox_"..colorname,
                                0
                        )

                        register_micro(
                                "plasticbox",
                                "plasticbox_"..colorname,
                                "plasticbox:plasticbox_"..colorname,
                                { snappy=1,choppy=2,oddly_breakable_by_hand=1,flammable=2 },
                                {        "plasticbox:plasticbox_"..colorname.."_stair.png",
                                },
                                "plasticbox_"..desc,
                                "plasticbox_"..colorname,
                                0
                        )
end
