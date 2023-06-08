require 'globals'

i = 0
function checkCollision(xPlayer, xNPC, yPlayer, yNPC)
  if math.abs(xPlayer - xNPC) < 10 and math.abs(yPlayer - yNPC) < 10 and love.keyboard.isDown('space') then
    i = i + 1
    print(i)
  end
end