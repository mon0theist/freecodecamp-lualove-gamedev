---@diagnostic disable: lowercase-global
-- disables warning about lowercase global variables

-- starting new main.lua for the "Working with Sprites" section of the course

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
    _G.jack = {
        x = 0,
        y = 0,
        sprite = {
            -- 5352 x 569
            image = love.graphics.newImage("sprites/redhatboy/spritesheet.png"),
            height = 569,
            width = 5352,
        },
        animation = {
            direction = "right",
            idle = true,
            frame = 1,
            max_frames = 8,
            speed = 20,
            timer = 0.1,
        }
    }
    QUAD_WIDTH = 669
    QUAD_HEIGHT = jack.sprite.height
    -- new quads have to be defined and created
    quads = {}
        -- can be done in a loop instead of repeating manuallyc
    -- for i = 1, 8 do
        for i = 1, jack.animation.max_frames do
            quads[i] = love.graphics.newQuad(QUAD_WIDTH * (i - 1), 0, QUAD_WIDTH, QUAD_HEIGHT, jack.sprite.width, jack.sprite.height)    
        end 
    

end

function love.update(dt) 
    -- runs at 60fps, game logic?
    -- dt = delta time, basically dt = frame

    if love.keyboard.isDown("d") then
        jack.animation.idle = false
        jack.animation.direction = "right"
    elseif love.keyboard.isDown("a") then
        jack.animation.idle = false
        jack.animation.direction = "left"
    else
        jack.animation.idle = true
        jack.animation.frame = 1
    end

    if not jack.animation.idle then
        jack.animation.timer = jack.animation.timer + dt -- keeps game animation consistent to real world time vs processing time?

        if jack.animation.timer > 0.2 then -- Change the animation frame every 0.2 seconds
            -- once 0.2 seconds has been reached then...
            -- reset the timer back to 0.1 (why not 0? not sure)
            jack.animation.timer = 0.1

            -- advance the animation to the next frame
            jack.animation.frame = jack.animation.frame + 1
        
            if jack.animation.direction == "right" then
                jack.x = jack.x + jack.animation.speed
            elseif jack.animation.direction == "left" then
                jack.x = jack.x - jack.animation.speed
            end

            -- reset back to frame 1 after reaching the last frame
            if jack.animation.frame > jack.animation.max_frames then
                jack.animation.frame = 1
            end

        end
    end
end


function love.draw()
    -- draw visuals to screen
    love.graphics.scale(0.3)

    if jack.animation.direction == "right" then
        love.graphics.draw(jack.sprite.image, quads[jack.animation.frame], jack.x, jack.y)
    else
        love.graphics.draw(jack.sprite.image, quads[jack.animation.frame], jack.x, jack.y, 0, -1, 1, QUAD_WIDTH, 0)
        -- love.graphics.draw( texture,          quad,                       x,       y,   r, sx, sy, ox,        oy, kx, ky )
        --[[ https://love2d.org/wiki/love.graphics.draw 
        Synopsis
        love.graphics.draw( texture, quad, x, y, r, sx, sy, ox, oy, kx, ky )
        Arguments
        Texture texture
        A Texture (Image or Canvas) to texture the Quad with.
        Quad quad
        The Quad to draw on screen.
        number x
        The position to draw the object (x-axis).
        number y
        The position to draw the object (y-axis).
        number r (0)
        Orientation (radians).
        number sx (1)
        Scale factor (x-axis).
        number sy (sx)
        Scale factor (y-axis).
        number ox (0)
        Origin offset (x-axis).
        number oy (0)
        Origin offset (y-axis).
        number kx (0)
        Shearing factor (x-axis).
        number ky (0)
        Shearing factor (y-axis).
        ]] 
    end

    
end