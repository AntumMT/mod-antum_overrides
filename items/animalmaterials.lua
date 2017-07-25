--[[ LICENSE HEADER
  
  MIT License
  
  Copyright © 2017 Jordan Irwin
  
  Permission is hereby granted, free of charge, to any person obtaining a copy of
  this software and associated documentation files (the "Software"), to deal in
  the Software without restriction, including without limitation the rights to
  use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
  of the Software, and to permit persons to whom the Software is furnished to do
  so, subject to the following conditions:
  
    The above copyright notice and this permission notice shall be included in
    all copies or substantial portions of the Software.
  
  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
  SOFTWARE.
  
--]]


-- Boilerplate to support localized strings if intllib mod is installed.
local S
if core.global_exists("intllib") then
	dofile(core.get_modpath("intllib").."/intllib.lua")
	if intllib.make_gettext_pair then
		S = intllib.make_gettext_pair("animalmaterials")
	else
		S = intllib.Getter("animalmaterials")
	end
else
	S = function ( s ) return s end
end


-- ITEMS THAT SHOULD NOT BE AVAILABLE IN ANTUM GAME

local delete_items = {
	'feather',
}

for I in pairs(delete_items) do
	core.unregister_item('animalmaterials:' .. delete_items[I])
end


-- OVERRIDING CRAFT ITEMS


-- Fish

core.register_craftitem(':animalmaterials:fish_bluewhite', {
	description = 'Raw Bluewhite Fish',
	image = 'fish_raw.png',
	on_use = core.item_eat(1),
	groups = { meat=1, eatable=1 },
	stack_max = 25
})
core.register_alias('fish_bluewhite_raw', 'animalmaterials:fish_bluewhite')

core.register_craftitem(':animalmaterials:fish_clownfish', {
	description = 'Raw Clownfish',
	image = 'fish_raw.png',
	on_use = core.item_eat(1),
	groups = { meat=1, eatable=1 },
	stack_max = 25
})
core.register_alias('clownfish_raw', 'animalmaterials:fish_clownfish')


-- Fur group

core.register_craftitem(":animalmaterials:fur", {
	description = S("Fur"),
	image = "animalmaterials_fur.png",
	stack_max=25,
	groups = {fur = 1},
})

core.register_craftitem(":animalmaterials:fur_deer", {
	description = S("Deer fur"),
	image = "animalmaterials_deer_fur.png",
	stack_max=10,
	groups = {fur = 1},
})

core.register_craftitem(":animalmaterials:coat_cattle", {
	description = S("Cattle coat"),
	image = "animalmaterials_cattle_coat.png",
	stack_max=10,
	groups = {fur = 1},
})
