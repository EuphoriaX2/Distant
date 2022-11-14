Square = {}


function Square:draw()
    love.graphics.rectangle("fill", self.x, self.y, self.width, self.height)
end

function Square:load()
    self.x = 450
    self.y = love.graphics.getHeight() / 2
    self.width = 200
    self.height = 200
    self.speed = 1000
    stop = true
end


function Square:update(dt)
    if stop == true then
        start()
    else
        num = math.random(1, 4)
    
        if num == 1 then
            self.y = self.y - self.speed * dt
        elseif num == 2 then
            self.y = self.y + self.speed * dt
        elseif num == 3 then
            self.x = self.x - self.speed * dt 
        elseif num == 4 then
            self.x = self.x + self.speed * dt
        end
    end
    Square:collide()
end

function Square:collide() 
    if Checkcolison(Square, Player) then
        stop = true
    end
end

function start()
    if love.keyboard.isDown("space") then
        stop = false
    end
end

function draw()
    love.graphics.print("Press space to start!", 400, 300)
end