## 【リファクタリング】コードレビューしてもらって学んだこと

### リファクタリング
プログラムの動作を変えず、内部構造を修正して、保守や可読性をよくする。　

### コメントアウトの使い方
今までは「何を書いてるか」を書いていたが、正しくは「なぜそうしないか」を書く。
「通常XXになりますが、今回は○○のため、この書き方をしています」…という感じ。

### コードの改行すべきところ、しないところ
```Ruby
Class Character

    def hogehoge
        puts "こんにちは" 
    end

end
```
- `end` と `end`の間空けない！
- `Class` と `def`の間空けない！
- 一番最後の`end`の下は一行空ける。それ以上は空けない。

**正しい書き方**
```Ruby
Class Character
    def hogehoge
        puts "こんにちは" 
    end
end

```

### 単一責任の原則
SOLID原則[参考文献](https://www.ogis-ri.co.jp/otc/hiroba/others/OOcolumn/single-responsibility-principle.html)
Sが「Single Responsibility Principle」
１つのクラスは１つだけ責任を持たねばならない。

**最初のコード**
```character.rb
class Character
  def calculate_damage(attack_power)
    defense_value = defend
    damage = [attack_power - defense_value, 0].max
    take_damage(damage)
    damage
end

```

```main.rb
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

```

**修正したコード**
```character.rb
class Character
  def calculate_damage(attack_value, defense_value)
    [attack_value - defense_value, 0].max
  end
end

```

```main.rb
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

```
