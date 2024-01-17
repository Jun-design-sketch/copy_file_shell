#list_of_files.txtからファイルリストを取得し
#folder_pathから
#destination_pathへコピーします。
-----------------------------
1.選択してコピーしたいファイルのあるプロジェクトまでのパスを入力してください。
folder_path="[path_from_root]"

2.コピーしたファイルを置きたいパスを入力してください。
destination_path="[path_from_root]/copyHere"

3.コピーしたいファイルリストはlist_of_files.txtに保存しておいてください。
例えば：svn diff -r BEFORE:AFTER --summarize

4.list_of_files.txtはcopy_script.shと同じパスにおいてください。

5.sh copy_script.shを実行します。
Windowsの場合、Git Bashから実行します。