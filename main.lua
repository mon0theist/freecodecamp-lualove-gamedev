_G.love = require("love") -- load "love" lua module

-- Basic functions
-- Every game needs these 3 functions (I think?)
function love.load() 
    -- load game data upon booting
    _G.number = 0
end

function love.update(dt) 
    -- runs at 60fps, game logic?
    -- dt = delta time, basically dt = frame
    number = number + 1
end

function love.draw()
    -- draw visuals to screen
    love.graphics.print(number)
end