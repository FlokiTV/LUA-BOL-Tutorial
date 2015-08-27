function OnLoad() -- Carrega os funções quando o script iniciar
  eMinion = minionManager(MINION_ENEMY, 1000, player, MINION_SORT_HEALTH_ASC) 
end

function OnTick() -- Carrega os funções o tempo todo
  eMinion:update()
  for i, minion in pairs(eMinion.objects) do
    if minion.valid and ValidTarget(minion) and minion.health <= getDmg("AD", minion, myHero) then
    myHero:Attack(minion)
    end
  end
end

function OnDraw()-- Desenha na tela
  if player.dead or GetGame().isOver then return end
  for i, minion in pairs(eMinion.objects) do
    if minion.valid and ValidTarget(minion) and minion.health <= getDmg("AD", minion, myHero) then
    DrawCircle(minion.x, minion.y, minion.z, 100,0xFFFFFAFA)
    end
  end
end