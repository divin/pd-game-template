-- Playdate SDK Core Libraries
import "CoreLibs/timer"
import "CoreLibs/crank"
import "CoreLibs/object"
import "CoreLibs/graphics"
import "CoreLibs/sprites"

-- Import libraries
import "libraries/sceneManager/source/sceneManager"

-- Import objects
import "constants"

-- Import scenes
import "scenes/game"

-- Define shorthands
local pd <const> = playdate
local gfx <const> = pd.graphics

-- Set refresh rate
pd.display.setRefreshRate(30)

-- Seed random number generator
math.randomseed(pd.getSecondsSinceEpoch())

-- Switch to the game menu scene
SCENE_MANAGER = SceneManager()
SCENE_MANAGER:switchScene(Game)

-- Main loop
function pd.update()
    -- Update sprite & timers
    gfx.sprite.update()
    pd.timer.updateTimers()
end
