## わかったことメモ。
### 1/10 教わったこと
<br>
#### Rubyのインスタンス変数

読んだもの<br>
https://docs.ruby-lang.org/ja/latest/doc/spec=2fvariables.html#instance

- オブジェクトに属する変数
- クラス内で共有され、オブジェクトごとに異なるデータを保持できる

つまり……<br>
HeroとdevilでHPや名前が違うからそれを保持するためにインスタンス変数（@）を使う！

#### initialize
Class#new から新しく生成されたオブジェクトの初期化のために呼び出される。<br>
クラスに書かれる。インスタンスを初期化するために使う。

#### 関数・変数
関数＝メソッド<br>
モジュール(skill.rb)は関数の束。<br>
attackとdefendをまとめて保管するためだけの場所なので、使いたい時はcharacterを書く。<br>
変数＝メソッドに入れる値、処理のために代入するもの。

#### attr_accessor(アトリビュートアクセサー)
ゲッター、セッターまとめて定義。

---

### 1/14 宿題：調べたこと
#### オブジェクト
https://docs.ruby-lang.org/ja/latest/doc/spec=2fobject.html<br>
オブジェクトとは、Rubyプログラムにおけるすべてのものの基本単位。Ruby で扱える全ての値。

#### インスタンス
インスタンスは、クラス（設計図）をもとに生成された具体的なオブジェクト。

#### include Skills(character.rb内)
- クラス名やモジュール名は大文字で書く。
- includeはモジュールをクラス内に取り込むためのキーワード。<br>
これにより、Skillモジュール内のメソッド(attackとdamege)がクラスのインスタンスメソッドとして使用できる。

#### なぜtake_damage(ダメージを受ける)メソッドをクラスに書くか？
- take_damageはキャラクターのHP（@hp）を減少させる処理。
- @hpはキャラクターごとに異なる値を持つインスタンス変数であり、個々のキャラクターに属する。

モジュールは、汎用的な機能や複数のクラスで共有する機能をまとめて提供する。<br>
クラス(Character)は、そのキャラクターの状態（属性）を管理する。<br>

つまり……<br>
take_damageメソッドは、HPという個々のインスタンス固有の状態を操作するため、クラス内に記入する。

---

### 1/17 学んだこと（あとで確認）

#### なぜ attack と defend はモジュールに書くの？
繰り返し使いたいから。

#### なぜ 防御 と ダメージ のメソッドはキャラクターメソッドに書くの？
キャラクター固有の情報だから。
ピカチュウとヒトカゲでは、防御・ダメージが違うから？

#### main.rb は何を書くの？
main.rb は、実際に動かす場所？
キャラクター、敵を入力する（これは試合によって違うので、今回は…みたいな感じで入れる。）
ジャッジ・キャラクターの攻撃などは、その場その場で変わる。
キャラクタークラス・スキルモジュールとは、役割が違う。






