require_relative './skills'

class Character
  include Skills
  attr_accessor :level, :name, :hp

  def initialize(level: 5, name:, hp:)
    @level = level
    @name = name
    @hp = hp
  end

  def calculate_damage(attack_value, defense_value)
    [attack_value - defense_value, 0].max
  end

  def take_damage(value)
    @hp -= value
    puts "#{name} は #{value} のダメージを受けた！残りHP: #{@hp}"
    puts "#{name} の残りHPは #{hp} です。"
  end
end
