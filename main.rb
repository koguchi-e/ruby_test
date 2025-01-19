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

def execute_turn(attacker, defender)
  attack_value = attacker.attack
  defense_value = defender.defend
  damage = attacker.calculate_damage(attack_value, defense_value)
  defender.take_damage(damage)

  judge(defender)
end

loop do
  break if execute_turn(character, enemy)
  break if execute_turn(enemy, character)
end
