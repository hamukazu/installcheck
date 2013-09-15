# InstallCheck

## Description（概要）

This program detects if there is an erased file in a specified directory.

このプログラムは、指定したディレクトリ内に消されたファイルがあるかを検出します。

## Motivation（動機）

In a workshop style class in a university, it is sometimes annoying to handle the problem accompanied with an accidental erase of necessary files by incautious students.
This tool is intended to check quickly if a file is deleted in a specified directory.

演習スタイルの授業で、不注意な学生が必要なファイルを消したことによるトラブルがよくあってイライラしてました。このツールは指定したディレクトリ内でファイルが消されたかどうかを素早くチェックするために作られました。

## Usage（使い方）

Type the command as follows:
```
ruby installcheckgen.rb path-to-remember
```
Then the file "installcheck.rb" is created. Note that file names of all the files in the path specified is embedded in it with compression. 
Now type the command as follows:
```
ruby installcheck.rb
```
It says "OK" if no file deletion is detected, and says "Broken" otherwise. It does not tell any additional information.

コマンドラインから次のように入力します
```
ruby installcheckgen.rb path-to-remember
```
すると"installcheck.rb"というファイルができます。指定したパスに含まれるファイル名の一覧がその中に含まれています。
次に、次のように入力します。
```
ruby installcheck.rb
```
もし消されたファイルがなければ"OK"と出力します。そうでなければ"Broken"と出力されます。それ以上の情報はなにも表示されません。
