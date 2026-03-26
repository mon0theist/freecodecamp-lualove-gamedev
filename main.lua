_G.love = require("love") -- load "love" lua module, _G = global

-- Basic functions
-- Every game needs these 3 functions (I think?)
--[[ 
from https://love2d.org/wiki/love:

love.load to do one-time setup of your game
love.update which is used to manage your game's state frame-to-frame
love.draw which is used to render the game state onto the screen.
--]]

function love.load() 
    -- load game data upon booting
    _G.Number = 0
    love.graphics.setBackgroundColor(0.5, 0.5, 1)
    
    _G.pacman = {
        x = 200,
        y = 250,
        eat = false,
    }

    _G.food_x = 600
end

function love.update(dt) 
    -- runs at 60fps, game logic?
    -- dt = delta time, basically dt = frame
    Number = Number + 1
    pacman.x = pacman.x + 1

    if pacman.x >= food_x + 20 then
        pacman.eat = true
    end
end

function love.draw()
    -- draw visuals to screen
    
    -- frames in upper-left corner
    love.graphics.print(Number)

    if not pacman.eat then
        love.graphics.setColor(0, 0, 0)
        love.graphics.rectangle("fill", food_x, 200, 70, 70)    
    end

    love.graphics.circle("line", 100, 100, 50)    

    -- pacman
    love.graphics.setColor(1, 0.7, 0.1)
    love.graphics.arc("fill", pacman.x, pacman.y, 60, 1, 5)
end