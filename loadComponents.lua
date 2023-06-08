require 'globals'

function loadComponents()
  player.right = love.graphics.newImage("images/player/player_right.png")
  player.left = love.graphics.newImage("images/player/player_left.png")
  player.up = love.graphics.newImage("images/player/player_up.png")
  player.down = love.graphics.newImage("images/player/player_down.png")
  
  pnj = love.graphics.newImage("images/pnj/pnj.png")
  
  indication = love.graphics.newImage("images/pnj/indication.png")
  
  font.nameFont = love.graphics.newFont('fonts/nameFont.ttf')
  
  slot.slotImage = love.graphics.newImage("images/slot.png")
  
  sword = love.graphics.newImage("images/sword.png")
  
  --change filter for smoother texture
  player.right:setFilter("nearest", "nearest")
  player.left:setFilter('nearest', 'nearest')
  player.up:setFilter('nearest', 'nearest')
  player.down:setFilter('nearest', 'nearest')
  
  pnj:setFilter('nearest', 'nearest')
  
  indication:setFilter('nearest', 'nearest')
  
  font.nameFont:setFilter('nearest', 'nearest')
end