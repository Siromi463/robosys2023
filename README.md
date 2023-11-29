# robosys2023
[![test](https://github.com/Siromi463/robosys2023/actions/workflows/test.yml/badge.svg)](https://github.com/Siromi463/robosys2023/actions/workflows/test.yml)


## 概要

* このソフトウェアパッケージは、2023年度のロボットシステム学の講義内で利用したものを改変したものです。

* パッケージ内にはplusというコマンドがあります。

## plusコマンド


### インストール方法

* １．以下のURLをコピーする。<br>
[URL:robosys2023](https://github.com/Siromi463/robosys2023.git)
<br>

* ２．ターミナル内でクローンする。<br>
```
$ git clone https://github.com/Siromi463/robosys2023.git
```
<br>

* ３．インストールされているか確認。<br>
```
$ ls
robosys2023
```
<br>

* ４．使ってみよう！

### 使い方

* 数字や文字の入力に対していくつかの出力を返します。
	* 数字の場合 : 全数値の合計値・乗算値・１００からの減		算値・１００を割っていった数・四つの数の合計値<br>

	* 文字の場合 : 全文字のUnicode値の合計値 

* 使用例１:`$ seq 5 | ./plus`
	* 入力値: [5 4 3 2 1]
	* 出力値:⇓  ⇓  ⇓
```
標準入力の合計値：15.0
標準入力の乗算値：120.0
標準入力の合計値を１００から引いた値：85.0
標準入力で１００を割っていった最終値：0.8333333333333334
上四つの合計値：220.83333333333334
```
<br>

* 使用例２:`$ echo A | ./plus` 
	* 入力値: A
	* 出力値: `入力された文字列の各Unicodeの合計:65`

<br>

* 使用例３:`$ echo Hello World | ./plus`
	* 入力値: Hello World
	* 出力値: `入力された文字列の各Unicodeの合計:1052` 



### 必要なソフトウェア
* Python
  * テスト済み：3.7 ~ 3.10

### テスト環境
* Ubuntu 22.04.2 LTS


### ライセンス

* このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます．
* © 2023 Fujioka Kimiyasu


* このソフトウェアパッケージ内のplusのコードは、以下のリンクから、著者の許諾を得て改変しています。
[ryuichiueda/my_slides/robosys_2022](https://github.com/ryuichiueda/my_slides/tree/master/robosys_2022)

