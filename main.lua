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
        angle1 = 1,
        angle2 = 5,
    }
    
    _G.food = {
        x = 600,
        eaten = false,
    }
end

function love.update(dt) 
    -- runs at 60fps, game logic?
    -- dt = delta time, basically dt = frame
    Number = Number + 1

    if love.keyboard.isDown("down") then
        pacman.angle1 = pacman.angle1 + math.pi * dt
        pacman.angle2 = pacman.angle2 + math.pi * dt
    elseif love.keyboard.isDown("up") then
        pacman.angle1 = pacman.angle1 - math.pi * dt -- (math.pi * dt) basically means "he amount to rotate this frame at a speed of π radians per second."
        pacman.angle2 = pacman.angle2 - math.pi * dt
    end

    if love.keyboard.isDown("a") then
        pacman.x = pacman.x - 1
    end
    if love.keyboard.isDown("d") then
        pacman.x = pacman.x + 1
    end
    if love.keyboard.isDown("w") then
        pacman.y = pacman.y - 1
    end
    if love.keyboard.isDown("s") then
        pacman.y = pacman.y + 1
    end


    if pacman.x >= food.x + 20 then
        food.eaten = true
    end
end

function love.draw()
    -- draw visuals to screen
    
    -- frames in upper-left corner
    love.graphics.print(Number)

    if not food.eaten then
        love.graphics.setColor(0, 0, 0)
        love.graphics.rectangle("fill", food.x, 200, 70, 70)    
    end

    love.graphics.circle("line", 100, 100, 50)    

    -- pacman
    love.graphics.setColor(1, 0.7, 0.1)
    love.graphics.arc("fill", pacman.x, pacman.y, 60, pacman.angle1, pacman.angle2)
end