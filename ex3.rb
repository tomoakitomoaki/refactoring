#!/usr/bin/ruby -Ke
require "rubygems"
require "nokogiri"
require "open-uri"
require "kconv"

doc = Nokogiri.HTML(open("http://ja.wikipedia.org/wiki/%E6%97%A5%E6%9C%AC%E3%81%AE%E5%A5%B3%E5%84%AA%E4%B8%80%E8%A6%A7"))

doc.search("ul")[44..44].each do |l|

    l.search("li").each do |m|
   	m.search("a").each do |n|

	puts n


end

end
end