# require_relative：他のRubyファイルを読み込むためのメソッド
require_relative './character'

character = Character.new(name: "hero", hp: 100)
enemy = Character.new(name: "devil", hp: 100)

# ジャッジ
def judge(target)
  if target.hp <= 0
    puts "#{target.name} は倒れた！"
    return true
  end
  false
end

loop do
  # キャラクターの攻撃
  attack_value = character.attack
  defense_value = enemy.defend
  damage = character.calculate_damage(attack_value, defense_value)
  enemy.take_damage(damage)

  if judge(character)
    break
  end
  
  # 敵の攻撃
  attack_value = enemy.attack
  defense_value = character.defend
  damage = character.calculate_damage(attack_value,defense_value)
  character.take_damage(damage)

  if judge(enemy)
    break
  end
end


