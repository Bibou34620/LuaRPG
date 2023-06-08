--Imports
local gamera = require 'libs/gamera'
require 'getUsername'
require 'loadComponents'
require 'globals'
require 'playerLimits'
require 'playerAnimation'
require 'npcAnimation'
require 'collidingNpc'

spawnTime = 0
canDraw = false
changeMove = 0

--Debug mode
io.stdout:setvbuf('no')

bg = love.graphics.newImage("images/bg.png")

--Init camera
local cam = gamera.new(0, 0, 800, 600)

--Init username
getUsername()

function love.load()
  loadComponents()
  player.actualPosition = player.right
  
  slot.one = slot.slotImage
  slot.two = slot.slotImage
  slot.three = slot.slotImage
end

function love.update(dt)
  playerLimits()
  playerAnimation()
  checkCollision(player.x, npc.x, player.y, npc.y)
  
  changeMove = changeMove + dt
  
  if changeMove >= 3 then
    npcAnimation()
    changeMove = 0
  end
  
  if npc.direction == "left" then
    npc.x = npc.x - (30 * dt)
  end
  
  if npc.direction == "right" then
    npc.x = npc.x + (30 * dt)
  end
  
  if npc.direction == "up" then
    npc.y = npc.y - (30 * dt)
  end
  
  if npc.direction == "down" then
    npc.y = npc.y + (30 * dt)
  end
  
  spawnTime = spawnTime + dt

  
  if love.keyboard.isDown('z') then
    player.y = player.y - (player.speed * dt)
    player.isOnRight = false
    player.isOnLeft = false
    player.isOnDown = false
    player.isOnUp = true
  end
  
  if love.keyboard.isDown('q') then
    player.x = player.x - (player.speed * dt)
    player.isOnRight = false
    player.isOnLeft = true
    player.isOnDown = false
    player.isOnUp = false
  end
  
  if love.keyboard.isDown('s') then
    player.y = player.y + (player.speed * dt)
    player.isOnRight = false
    player.isOnLeft = false
    player.isOnDown = true
    player.isOnUp = false
  end
  
  if love.keyboard.isDown('d') then
    player.x = player.x + (player.speed * dt)
    player.isOnRight = true
    player.isOnLeft = false
    player.isOnDown = false
    player.isOnUp = false
  end
end

function love.draw()
  cam:draw(function()
    love.graphics.draw(bg)
    love.graphics.draw(pnj, npc.x, npc.y)
    love.graphics.draw(indication, 107.5, 135)
    love.graphics.setFont(font.nameFont)
    love.graphics.print(username, player.x - 3, player.y - 20)
    love.graphics.draw(player.actualPosition, player.x, player.y)
    cam:setPosition(player.x + 20, player.y + 20)
    cam:setScale(2.1)
  end)

  love.graphics.draw(slot.one, 300, 470)
  love.graphics.draw(slot.two, 400, 470)
  love.graphics.draw(sword, 310, 480)
end

function love.keypressed(key, scancode, isRepeat)
  if key == 'space' and isWearing == false then
    print("space")
  end
end