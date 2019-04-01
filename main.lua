-- Draw the game to the screen
function love.draw()
    drawEnemies()
end

-- Draw the background of stars
function drawStars()

end

-- Draw the player's ship
function drawPlayer()

end

-- How the enemies accelerate downwards
enemyAcceleration = 5

-- Enemy initial speed
enemySpeed = 40

-- Table of all enemies
enemies = {}

math.randomseed(love.timer.getTime())

windowWidth = love.graphics.getWidth()

-- Add random enemies (above the top of the screen, so they're out of view initially)
for i = 1, 50 do
    x = math.random(10, windowWidth - 10)
    y = math.random(i * -100, (i - 1) * -100)
    enemy = { x = x, y = y }
    table.insert(enemies, enemy)
end

-- Draw all of the enemy ships
function drawEnemies()
    for _, enemy in ipairs(enemies) do
        x = enemy.x
        y = enemy.y
        --                           bottom    top left        top right
        love.graphics.polygon("fill", x, y, x - 10, y - 20, x + 10, y - 20)
    end
end

-- Update the game state, e.g. move player if they are holding a key
function love.update()
    updatePlayer()
    updateEnemies()
end

function updatePlayer()

end

function updateEnemies()
    -- increase enemy speed
    enemySpeed = enemySpeed + enemyAcceleration * love.timer.getDelta()
    for _, enemy in ipairs(enemies) do
        enemy.y = enemy.y + enemySpeed * love.timer.getDelta()
    end
end
