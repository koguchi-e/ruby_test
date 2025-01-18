require_relative './character'

class BattleGame
  def initialize(player, enemy)
    @player = player
    @enemy = enemy
    @game_over = false
  end

  def start
    until @game_over
      execute_turn(@player, @enemy)
      break if @game_over

      execute_turn(@enemy, @player)
    end
  end

  private

  def execute_turn(attacker, defender)
    attack_point = attacker.attack
    defense_point = defender.defend
    damage = attacker.calculate_damage(attack_point, defense_point)
    defender.take_damage(damage)
    
    check_defeat(defender)
  end

  def check_defeat(character)
    if character.hp <= 0
      @game_over = true
      puts "#{character.name}は倒れた！"
    end
  end
end

player = Character.new(name: "hero", hp: 100)
enemy = Character.new(name: "devil", hp: 100)
game = BattleGame.new(player, enemy)
game.start