# GitHubでのウェブ公開のテスト

## はじめに

これはGitHubでウェブ公開をするためのテストサイトです。Markdownで内容を記述し、PandocでHTMLに変換しています。適当なテンプレート(`template.html`)を使うことで、スマホからも見ることができるレスポンシブなサイトになります。

具体的には、このファイル(`README.md`)を、以下のようにHTMLに変換しています。

```sh
pandoc -s README.md -o index.html --mathjax -t html --template=template
```

HTMLに変換されたファイルは、そのまま

```txt
https://ユーザー名.github.io/リポジトリ名/
```

でアクセスできます。例えば、このサイトなら、リポジトリは

[http://github.com/kaityo256/webtest/](http://github.com/kaityo256/webtest/)

で、公開URLは

[http://kaityo256.github.com/webtest/](http://kaityo256.github.com/webtest/)

となります。

直接HTMLを編集しても良いですが、レスポンシブにするのが面倒なので、Markdownから適切なテンプレートを使って変換したほうが楽だと思います。

## リンク

例えばリンクは[このように](https://www.appi.keio.ac.jp/)作成することができます。
