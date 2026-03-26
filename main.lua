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
print(string.lower(str))
print(string.upper(str))

-- MATH
-- same operators as all other languages
-- math library
print(math.pi)
print(math.min(-1, 0, 1))
print(math.max(-1, 0, 1))
print(math.ceil(20.9)) -- round up
print(math.floor(1.753))
print(math.random(1, 100))
math.randomseed(os.time()) -- more entropy for random

-- IF STATEMENTS
if true then
        print("This was true")
elseif 1 > 2 then
    print("This was false")
else
    print("else")
end

-- same comparison operators as all other languages
--[[
    and
    or
    not
    >
    <
    >=
    <=
    ~= (NOT equal)
    ==
]]


-- FOR LOOPS 
-- from 1 to 10, incrementing by 2
for i = 1, 10, 2 do
    print(i)
end

-- WHILE LOOP
-- while true do
--     print("Infinite loop, hit CTRL+C")
-- end

-- REPEAT LOOP (DO WHILE)
local count = 10
repeat
    count = count + 1
    print("REPEAT LOOP")
until count > 10

-- USER INPUT
print("What is your name?")
local ans = io.read()

-- TABLES (ARRAYS/LISTS)
local tbl = {"a", "b", "c", 1, 2, 3}
print(tbl) -- gives you the memory address
table.insert(tbl, "X") -- appends to end, unless middle parameter specifies index
table.remove(tbl, 1) -- removes by index, not value


for i = 1, #tbl do -- length/number of items of tbl
    print(tbl[i])
end

-- key/value pairs
for index, value in pairs(tbl) do
    print(index, value)
end

print(table.concat(tbl));

-- named table/dictionary/object
local dict = {
    name = "Mike",
    age = 12
}

print(dict[0]) -- returns nil
print(dict["name"]) -- returns Mike

-- FUNCTIONS
local function SayHello()
    print("Hello")
end

SayHello()

-- WORKING WITH FILES
io.output("myfile.txt") -- create file / overwrite file if it already exists
local fileData = io.read("*all") -- can also do *line
print(fileData)
-- io.write("Hello World")
io.close() -- close files after working with it

--[[ io.write() writes to the current default output file.
-- When you call:
-- io.output("myfile.txt")
-- Lua:
-- Opens "myfile.txt" in write mode
-- Sets it as the default output file
-- Returns a file handle internally
-- So then:
-- io.write("Hello World")
-- writes to whatever file is currently set as the default output.]]

local file = io.open("myfile.txt", "w") -- open in write mode
if file ~= nil then
    file:write("Hello there!")
    file:close()
else
    print("Could not open file")
end

--[[
Why is it file:write instead of file.write ?
🔥 The Short Answer
file:write("Hello") is syntactic sugar for:
file.write(file, "Hello")
The colon : automatically passes the table itself as the first argument.
]]

-- CUSTOM MODULES
-- "module" in lua refers to a lua file that returns a single table when called
-- a file other than main.lua
-- a package is a collection of modules
-- see custom.lua
local mod = require("custom.lua") --import custom.lua as a module

-- OOP
-- everything is an object
-- objects should return tables
local function Pet()
    return {
        name = "Charlie"
    }
end

local cat = Pet()
print(cat.name)

