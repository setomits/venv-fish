# venv-fish

venv-fish は Python3 の venv を操作するためのいくつかのラッパーコマンドを含んでいます。
[virtualenvwrapper](https://virtualenvwrapper.readthedocs.io/) のように使うことを想定しています。

## インストール

[fisherman](https://github.com/fisherman/fisherman) を使います

```
fisher setomits/venv-fish
```

## 使い方

デフォルトでは venv-fish は仮想環境の保存に `~/venv` を使います。
変更したい場合は環境変数 `$VENV` を適宜設定してください。

### 新しい環境を作る

```fish
mkvenv cool-flask-app
```

mkvenv で新しい仮想環境が作られ、作業中の環境をそちらに変更します。
抜けたいときは `deactivate` を実行してください。

### 作業中の環境を変更する

```fish
workon cool-flask-app
```

もし仮想環境と同名のプロジェクトのディレクトリにいる場合は以下のように単に `workon` だけで変更可能です。


```fish
cd /path/to/projects/cool-flask-app
workon
```

### 環境の削除

```fish
rmvenv cool-flask-app
```

### 環境の一覧

```fish
lsvenv
```
