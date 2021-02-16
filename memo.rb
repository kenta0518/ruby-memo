require "csv"

puts "1(新規でメモを作成) 2(既存のメモ編集する)"

memo_type = gets.to_i

if memo_type == 1
    puts "拡張子を除いたファイルを入力してください"
    free_title = gets.chomp.to_s
    CSV.open("#{free_title}.csv","w")do |csv|
    puts "メモしたい内容を記入してください"
    puts "完了したらCtrl + D を押します"
    contents = readlines.map(&:chomp)
    csv << contents
end
elsif memo_type == 2
    puts "編集したいファイルを拡張子を除いて入力してください"
    title_name = gets.chomp.to_s
    CSV.open("#{title_name}.csv","a")do |csv|
    puts "メモしたい内容を記入してください"
    puts "完了したらCtrl + D を押します"
    contents = readlines.map(&:chomp)
    csv << contents
end
else
    puts "エラー！ 1か2を入力してください"
end 