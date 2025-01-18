require_relative './skills'

class Character
  include Skills
  attr_accessor :level, :name, :hp

  def initialize(level: 5, name:, hp:)
    @level = level
    @name = name
    @hp = hp
  end

  def calculate_damage(attack_point, defense_point)
    damage = [attack_point - defense_point, 0].max
    take_damage(damage)
    damage
  end

  def take_damage(damage_point)
    @hp -= damage_point
    puts "#{name} は #{damage_point} のダメージを受けた！残りHP: #{@hp}"
    puts "#{name} の残りHPは #{hp} です。"
  end
end
