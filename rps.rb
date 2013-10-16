puts "ゲームロボットです！"
puts "１：じゃんけん、２：なんだとはなんだゲーム　のどちらかを選択してください。"
choice = gets.chomp

if choice == "1"

def robotplay
  robo = rand(3) +1
  case robo
  when 1
    puts "私はグーを出しました。"
  when 2
    puts "私はパーを出しました。"
  when 3
    puts "私はチョキを出しました。"
end
end

def playerplay
  player = gets.chomp
  case player.to_i
  when 1
    puts "ポイ！あなたはグーを出しました。"
  when 2
    puts "ポイ！あなたはチョキを出しました。"
  when 3
    puts "ポイ！あなたはパーを出しました。"
end
end

puts "1 :グー、2 :チョキ、3 :パー　から数字を選んでください。"
puts "いきます。じゃーんけーん・・・"
playerplay
robotplay

end

if choice == "2"

  def sayNanda numberOfNanda
  command =gets.chomp
# a = 0
  if command == "nanda" + "tohananda"*(numberOfNanda + numberOfNanda) #+ a)  
#    a += 1
  puts "なんだとは" * (numberOfNanda + numberOfNanda + 1) + "なんだ"
    else 
    puts "間違いです！私の勝ちですね！"
    exit
end
end

puts "「なんだとはなんだ」ゲームです。nandaと返して下さい。私のパソコンはwindowsです。"

i = 0
until i >= rand(10 .. 30)
  sayNanda i
  i += 1
end

puts "負けました！強いですね！"
end