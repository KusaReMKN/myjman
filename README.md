# My jman

## これはなに
FreeBSD で利用される jman のためのシェルスクリプトです。
jman を利用して eucJP や UTF-8 で書かれたマニュアルページを表示することができます。
日本語のマニュアルページが見つからないときにはデフォルトのマニュアルページを表示します。

## インストール方法
make でインストールできます。
インストール先は ~/bin/ です。

```console
% make install clean
```

また、**~/.cshrc** や **~/.shrc** に次のように記述します。
```sh
alias	man	'myjman'	# csh
alias	man='myjman'		# sh
```
