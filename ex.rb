#!/usr/bin/ruby -Ke
require "rubygems"
require "nokogiri"
require "open-uri"
require "kconv"

doc = Nokogiri.HTML(open("http://ja.wikipedia.org/wiki/%E6%97%A5%E6%9C%AC%E3%81%AE%E5%A5%B3%E5%84%AA%E4%B8%80%E8%A6%A7"))

doc.search("ul")[1..1].each do |l|
   #l.search("li").each do |m| 
   #name = m.search("a")
  l.search("a").each do |m|
  
  puts m
 #puts  name


  #  m.search("a").each do |n|

 # puts n




#doc.search("//table[@class='font12' and @bgcolor]//tr[position()>1]").each do |tr|
  #place   = tr.search("td[1]").text
 # weather = tr.search("td[2] > img").map{|img| img["alt"]}.join("|")
#  puts "#{place}\t#{weather}\n".tosjis
end
end
#end