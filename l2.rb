# -*- encoding: UTF-8 -*-
#!/usr/bin/ruby -Ke
require "rubygems"
require "nokogiri"
require "open-uri"
require "kconv"

doc = Nokogiri.HTML(open("http://ja.wikipedia.org/wiki/%E6%97%A5%E6%9C%AC%E3%81%AE%E5%A5%B3%E5%84%AA%E4%B8%80%E8%A6%A7"))

puts "「あ」から始まる名前をを検索したい場合は1を、「い」から始まる名前なら2を、という様に対応する数字を入力して下さい。"
puts "数字を入力したらEnterを押してください。"

name = gets.chomp.to_i

doc.search("ul")[name..name].each do |l|

  l.search("a").each do |m|

  puts m

end
end
