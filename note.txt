### 1/10
### Rubyのインスタンス変数

公式ドキュメント
https://docs.ruby-lang.org/ja/latest/doc/spec=2fvariables.html#instance

- オブジェクトに属する変数
- クラス内で共有され、オブジェクトごとに異なるデータを保持できる

つまり……
HeroとdevilでHPや名前が違うからそれを保持するためにインスタンス変数（＠）を使う！

#### オブジェクト
https://docs.ruby-lang.org/ja/latest/doc/spec=2fobject.html
オブジェクトとは、Rubyプログラムにおけるすべてのものの基本単位。Ruby で扱える全ての値。

#### インスタンス
インスタンスは、クラス（設計図）をもとに生成された具体的なオブジェクト。

#### initialize
Class#new から新しく生成されたオブジェクトの初期化のために呼び出される。
クラスに書かれる。インスタンスを初期化するために使う。

#### 関数・変数
関数＝メソッド　
モジュール(skill.rb)は関数の束。
attackとdefendをまとめて保管するためだけの場所なので、使いたい時はcharacterを書く。
変数＝メソッドに入れる値、処理のために代入するもの



