#-*- encoding: UTF-8 -*-
#!/usr/bin/ruby -Ke
require "rubygems"
require "nokogiri"
require "open-uri"
require "kconv"

puts "こんにちは、練習用ロボです。"
puts "英語で話しかけて頂くと、対応した情報を返します。"
puts "それでは、ご用件をお伺いします。"

command = ""
while command != "Bye"
   command = gets.chomp

       if command.include?("weather") or command.include?("how is it") or command.include?("How is it") or command.include?("rainy") or command.include?("sunny") or command.include?("cloud")
          doc = Nokogiri.HTML(open("http://www.jma.go.jp/jp/yoho/319.html"))
          puts "天気に関するキーワードを認識しました。東京都の気象情報をお届けします"
          doc.search("pre").each do |l|
          puts l
          end

       else if command.include?("Hi") or command.include?("Hello") or command.include?("how do you do") or command.include?("good morning") or command.include?("good afternoon") or command.include?("good evening") or command.include?("tired") or command.include?("hi")
         puts "お疲れ様です、マスター。"

       else if command.include?("time") or command.include?("Time") or command.include?("clock")
         time = Time.new
         puts "現在の時刻は" + time.to_s + "です。"
     
       else if command.include?("game") or command.include?("play") or command.include?("fan") or command.include?("interesting") or command.include?("enjoy") or command.include?("GAME")
         puts "ゲーム機能としては、１：じゃんけん、２：サイコロ振り、の２つから選択いただけます。"
         puts "起動したい番号を入力してください。終了する場合はendと入力してください。"
         puts "1: じゃんけん     2: サイコロ振り"
             choice = gets.chomp
             while choice != "end"
                 if choice == "1"
                   rps = {0 => "グー", 1 =>"チョキ", 2 => "パー"}
                   puts rps.sort_by{rand}[0][1]
                   choice = gets.chomp
                 else if choice == "2"
                   class Die
                     def roll
                       1 + rand(6)
                     end #def end
                   end #class end
                       dice = Die.new
                       puts "サイコロの結果は"
                       puts dice.roll
                       puts "です。"
                       choice = gets.chomp
                 end # else if end
                 end #if end
             end # while end
             puts "ゲーム機能を終了します。"
     else 
         puts "成程。"

     end #else if end 3
     end #else if end 2
     end #else if end 1
     end # if end



end #while end


puts "またお会いできるといいですね。"
