# itc-iic
## Examples
* test_inv.gds インバータレイアウト
* test_inv.sch LVS用xschemデータ
* trbench.sch オン抵抗シミュレーション
* trbench2.sch オン抵抗シミュレーション　バルク編
* trbench_mc.sch モンテカルロシミュレーションの例

## 使用方法
```
git clone https://github.com/nakmm/itc-iic.git
cd itc-iic
./home-setup.sh 
```

スクリプト終了後、一旦ログアウトしてまたログインしなおしてください。

## trbenchのあそびかた
回路図 (trbench*.sch) はxschemで使用するファイルで、起動方法は
```
xschem
```

右上のNetlistでネットリストを出力した後、Simulateを押すことでngspiceによるシミュレーションを行えます。
またシミュレーション後、ngspiceで ```write hogehoge.raw``` とコマンドを打ってrawファイルを出力しておくとWavesまたは```gaw```で起動するgaw3から波形を確認できます。

## test_invのあそびかた
レイアウトへ移行する前に、LVSのためのネットリストを作成しておく必要があります。
xschemでtest_inv.schを開いた後、上のメニュー ```Simulation > LVS netlist: Top level is a .subckt``` をクリックしてチェックがついている状態である必要があります。
チェックが付いた事を確認して、Netlistを押してネットリストを出力してください。押したら、xschemを閉じてください。

レイアウトはklayoutを使用します。起動方法は
```
klayout
```

```File > Open``` でtest_inv.gdsを開くといろいろ遊べます。
sky130 PDKメニューからDRC、LVS、PEXが実行できます。各種ネットリストはGDSファイルと同じフォルダに生成されます。
DRCが３つありますが、それぞれ見ているルールが微妙に異なります。
例えば今回の場合、Klayout DRC (Caravel) では通りますが、 Magic DRC, Klayout DRC (Full)では違反となります。

LVSは２つありますが、Magic LVSの結果を信用してください。
（Klayout LVSはサブストレートのネット名がGND固定です）
