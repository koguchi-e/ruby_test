module Skills
  def attack
    damage = rand(10)
    puts "#{name} は攻撃した！"
    damage
  end

  def defend
    defense = rand(10)
    puts "#{name} は防御した！"
    defense
  end
end
