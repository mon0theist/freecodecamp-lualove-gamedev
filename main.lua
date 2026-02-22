-- HELLO WORLD
print("Hello, World!")
print("Hello", "World")
print("Hello" .. "World")

--[[
    multi-line
    comment
]]

-- DATA TYPES AND VARIABLES
-- nil 
-- number 1
-- string "asdas" 'sadasd' 
--- boolean true false 
-- tables -- arrays/lists

local name = "Ryen"
_G.GlobalVar = 10 -- can be accessed by other lua files 
local multilinestring = [[
    This is 
    a multi-line
    string
]] -- very literal, includes tabs/spaces

-- multi-assign
local one, two, three = 1, 2, 3

local x = "Hello World"
print(#x) -- returns length
local y = #"Hello world" -- also returns length
print(y)

local num = 20
local str = tostring(num)
print(type(num), type(string))
print("Hello\nNewLine\tNewTab\vVerticalTab\\ \"quote\"") -- escape chars

