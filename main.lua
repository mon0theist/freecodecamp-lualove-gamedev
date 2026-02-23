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
