require("Player")
require("Square")

function love.draw()
    Player:draw()
    Square:draw()
end

function love.update(dt)
    Player:update(dt)
    Square:update(dt)
    Checkcolison(Square, Player)
end

function love.load()
    Player:load()
    Square:load()
end

function Checkcolison(a, b)
    if a.x + a.width > b.x and a.x < b.x + b.width and a.y + a.height > b.y and a.y < b.y + b.height then
        stop = true
    else
        stop = false
    end
end