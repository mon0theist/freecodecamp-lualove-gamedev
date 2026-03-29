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
        }
    }
    QUAD_WIDTH = 669
    QUAD_HEIGHT = jack.sprite.height
    -- new quads have to be created
    love.graphics.newQuad(0, 0, QUAD_WIDTH, QUAD_HEIGHT, jack.sprite.width, jack.sprite.height)
    -- can be done in a loop instead of repeating manually
    

end

function love.update(dt) 
    -- runs at 60fps, game logic?
    -- dt = delta time, basically dt = frame

end

function love.draw()
    -- draw visuals to screen

end