require 'randomGenerator'
require 'globals'

function npcAnimation()
  direction = randomGenerator(0, 6)
  
  if direction == 0 then
    npc.direction = "left"
  end
  
  if direction == 1 then
    npc.direction = "right"
  end
  
  if direction == 2 then
    npc.direction = "up"
  end
  
  if direction == 3 then
    npc.direction = "down"
  end
  
  if direction >= 4 then
    npc.direction = "static"
  end
end
