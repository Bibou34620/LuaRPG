username = nil

function getUsername()
  local usernameFile = io.open("utils/user.txt", "rb")
  username = usernameFile:read()
end