#選択してコピーしたいファイルのあるプロジェクトまでのパスを入力してください。
folder_path="[path_from_root]/code/shell"
#コピーしたファイルを置きたいパスを入力してください。
destination_path="[path_from_root]/code/shell/copyHere"
#コピーしたいファイルリストはlist_of_files.txtに保存しておいてください。
#例えば：svn diff -r BEFORE:AFTER --summarize
#list_of_files.txtはcopy_script.shと同じパスにおいてください。

#######################################################################

while IFS="" read -r p || [ -n "$p" ]
  do
    directory_path=$(dirname "$p")
    file_name=$(basename "$p")

    #ディレクトリが存在しなければ生成する
    mkdir -p "$destination_path/$directory_path"

    #ログ
    if [ "echo $?"="0" ]; then
      echo "ディレクトリ生成： $destination_path/$directory_path"
    fi

    #ファイルをコピーする
    cp $folder_path/$directory_path/$file_name $destination_path/$directory_path/

    #ログ
    if [ "echo $?"="0" ]; then
      echo "ファイルコピー： $destination_path/$file_name"
    fi

done < list_of_files.txt

echo "コピー完了：$destination_path"

#######################################################################