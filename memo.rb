require "csv" # CSVファイルを扱うためのライブラリを読み込んでいます

 puts "1 → 新規でメモを作成する / 2 → 既存のメモを編集する"
 
 memo_type = gets.to_i # ユーザーの入力値を取得し、数字へ変換しています
 
 # if文を使用して続きを作成していきましょう。
 # 「memo_type」の値（1 or 2）によって処理を分岐させていきましょう。
if memo_type == 1
   puts "新規ファイルを作成します。拡張子を除いたファイル名を入力してください。"
   file_name = gets.chomp

   puts "メモしたい内容を記入してください。"
   puts "完了したら改行してCtrl + Dを入力して保存します。"

   input_memo = STDIN.read
   memo2 = input_memo.chomp

   CSV.open("#{file_name}.csv", "w") do |memo|
   memo << ["#{memo2}"]
end

elsif memo_type == 2
   puts "保存されているメモを編集します。拡張子なしでファイル名を入力してください"
   file_name_edit = gets.chomp
   puts "追記したい内容を入力してください"
   puts "完了したら改行してCtrl + Dを入力して保存します"

   input_memo = STDIN.read
   memo2 = input_memo.chomp

   CSV.open("#{file_name_edit}.csv", "a") do |memo|
   memo << ["#{memo2}"]
end
end
