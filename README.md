# My jman

## 注意！
こんなものを使うよりも [Gist] に公開されている cshrc から
`jjman` と `ujman` の alias を引っ張ってきたほうが 100 倍マシです。

[Gist]: https://gist.github.com/KusaReMKN/bfd6efb64c72c34f12a98bed3bf4f295

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
