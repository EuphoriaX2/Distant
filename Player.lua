Player = {}
function Player:draw()
    love.graphics.rectangle("line", self.x, self.y, self.width, self.height)
    if stop == true then
        draw()
    else

    end
end

function Player:update(dt)
    if stop == true then
        start()
    else
        if love.keyboard.isDown("up") then
            self.y = self.y - self.speed * dt
        elseif love.keyboard.isDown("down") then
            self.y = self.y + self.speed * dt
        elseif love.keyboard.isDown("left") then
            self.x = self.x - self.speed * dt
        elseif love.keyboard.isDown("right") then
             self.x = self.x + self.speed * dt
        end
    end
end

function Player:load()
    self.x = 400
    self.y = love.graphics.getHeight() / 2
    self.width = 10
    self.height = 10
    self.speed = 100
end

function start()
    if love.keyboard.isDown("space") then
        stop = false
    end
end

function draw()
    love.graphics.print("Press space to start!", 200, 300)
end