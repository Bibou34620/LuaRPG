require 'globals'

function playerAnimation()
  if player.isOnLeft == true then
    player.actualPosition = player.left
  end
  
  if player.isOnRight == true then
    player.actualPosition = player.right
  end
  
  if player.isOnDown == true then
    player.actualPosition = player.down
  end
  
  if player.isOnUp == true then
    player.actualPosition = player.up
  end
end