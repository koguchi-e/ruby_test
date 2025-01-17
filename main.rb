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
  attack_power = character.attack
  enemy.calculate_damage(attack_power)

  if judge(character)
    break
  end
  
  # 敵の攻撃
  attack_power = enemy.attack
  character.calculate_damage(attack_power)

  if judge(enemy)
    break
  end
end


