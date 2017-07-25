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


core.register_craftitem(':cooking:fish_bluewhite_cooked', {
	description = 'Cooked Bluewhite Fish',
	image = 'fish_cooked.png',
	on_use = core.item_eat(6),
	groups = { meat=1 , eatable=1},
	stack_max = 25
})

core.register_alias('fish_bluewhite_cooked', 'cooking:fish_bluewhite_cooked')

core.register_craftitem(':cooking:fish_clownfish_cooked', {
	description = 'Cooked Clownfish',
	image = 'fish_cooked.png',
	on_use = core.item_eat(6),
	groups = { meat=1 , eatable=1},
	stack_max = 25
})

core.register_alias('clownfish_cooked', 'cooking:fish_clownfish_cooked')
