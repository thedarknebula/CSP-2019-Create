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

enemies = {
    { x = 100, y = 100 }
}
-- Draw all of the enemy ships
function drawEnemies()
    for _, enemy in ipairs(enemies) do
        love.graphics.polygon("fill", enemy.x, enemy.y, enemy.x - 10, enemy.y - 20, enemy.x + 10, enemy.y - 20)
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

end
