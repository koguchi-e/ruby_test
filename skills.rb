module Skills
  def attack
    damage = rand(10)
    puts "#{name} は攻撃した！"
    damage
  end

  def defend
    puts "#{name} は防御した！"
  end

end
