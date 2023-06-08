-- Set randomseed
math.randomseed(os.time())

function randomGenerator(min, max)
  result = math.random(min, max)
  
  return result
end