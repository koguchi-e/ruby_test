require_relative './character'

character = Character.new(name: "hero", hp: 100)
enemy = Character.new(name: "devil", hp: 100)

def judge(target)
  if target.hp <= 0
    puts "#{target.name} は倒れた！"
    return true
  end
  false
end

loop do
  attack_value = character.attack
  defense_value = enemy.defend
  damage = character.calculate_damage(attack_value, defense_value)
  enemy.take_damage(damage)

  if judge(character)
    break
  end
  
  attack_value = enemy.attack
  defense_value = character.defend
  damage = character.calculate_damage(attack_value,defense_value)
  character.take_damage(damage)

  if judge(enemy)
    break
  end
end
