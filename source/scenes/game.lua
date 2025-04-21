-- Define shorthands
local pd <const> = playdate
local gfx <const> = pd.graphics

--- @class Game : _Sprite
class("Game").extends(gfx.sprite)

--- Initializes the game scene
--- @return nil
function Game:init()
    Game.super.init(self)

    local width, height = pd.display.getWidth(), pd.display.getHeight()
    local image = gfx.imageWithText("Hello World", width, height, nil, nil, nil, kTextAlignment.center)
    self:setImage(image)

    -- Set the scene's properties
    self:setZIndex(0)
    self:setCenter(0.5, 0.5)
    self:moveTo(width / 2, height / 2)
    self:add()
end
