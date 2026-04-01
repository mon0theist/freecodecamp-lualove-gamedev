-- capital E in Enemy.lua as a convention to indicate Object
-- technically there is no "object" in Lua
-- see OOP section in course video
local love = require "love"

function Enemy()
    return {
        level = 1, -- difficulty
        radius = 20, -- size of balls/circles
        -- start position off-screen
        x = -10,
        y = -50,
        
        -- function for enemy movement (might need to rewatch OOP section)
        move = function(self, player_x, player_y)
            if player_x - self.x > 0 then
                self.x = self.x + self.level
            end
        end
    }

end

return Enemy