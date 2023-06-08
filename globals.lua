-- Declare tables
player = {}
npc = {}
font = {}

--player
player.left = nil
player.right = nil
player.up = nil
player.down = nil
player.actualPosition = nil
player.x = 0
player.y = 0
player.isOnRight = true
player.isOnLeft = false
player.isOnUp = false
player.isOnDown = false
player.speed = 100

pnj = nil

--npc
npc.direction = "right"
npc.x = 100
npc.y = 100

--font
font.nameFont = nil

--misc
isWearing = false
