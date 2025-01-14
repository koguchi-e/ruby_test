# require_relative：他のRubyファイルを読み込むためのメソッド
require_relative './character'

character = Character.new(name: "hero", hp: 100)

enemy = Character.new(name: "devil", hp: 100)

# loop do
#   enemy.hp = enemy.hp - character.attack
#   if enemy.hp <= 0
#     puts "#{enemy.name} 倒れた！"
#     break
#   end
# end

loop do
  # 主人公の攻撃
  damage = character.attack
  enemy.take_damage(damage)

  if enemy.hp <= 0
    puts "#{enemy.name} は倒れた！"
    break
  end

  #########################
  # 敵の攻撃
  damage = enemy.attack
  character.take_damage(damage)

  if character.hp <= 0
    puts "#{character.name} は倒れた！"
    break
  end
end

