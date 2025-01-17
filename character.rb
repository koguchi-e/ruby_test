# require_relative：他のRubyファイルを読み込むためのメソッド
require_relative './skills'

class Character
  include Skills
  # attr_accessor：「getter」と「setter」を自動的に生成するメソッド
  attr_accessor :level, :name, :hp

  # initialize：クラスが新しく生成されるたびに初期化されるメソッド。
  def initialize(level: 5, name:, hp:)
    # Rubyのインスタンス変数
    # オブジェクトごとにデータを保持するためにインスタンス変数を使用
    @level = level
    @name = name
    @hp = hp
  end

  ###########################################

  def calculate_damage(attack_power)
    defense_value = defend
    damage = [attack_power - defense_value, 0].max
    take_damage(damage)
    damage
  end

  # 「ダメージを受ける」メソッド
  def take_damage(value)
    @hp -= value
    puts "#{name} は #{value} のダメージを受けた！残りHP: #{@hp}"
    puts "#{name} の残りHPは #{hp} です。"
  end
  
end

