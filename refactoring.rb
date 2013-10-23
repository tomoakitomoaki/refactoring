#インデント整形
#=の前後にスペース挿入
#============前提条件（改行）==============
require 'scanf'

#============内生要素入力部分(改行)============
questionNum = gets.chomp.to_i #問題数を分かり易い変数名へ
answerNumStrings = gets.chomp.to_s #正解番号を文字化、分かり易い変数名へ
answerNumInterger = answerNumStrings.scanf("%1d" * questionNum) #正解番号をinteger化

#============カウント(改行)=============
choice = [0, 0, 0, 0] #one~fourの箇所に配列を使用

#============繰り返し部分(改行)=============
answerNumInterger.each do |l|
  choice[l-1] = choice[l-1] + 1
end

#===========出力（改行）=============
puts choice.max #最大値
puts choice.min #最小値
