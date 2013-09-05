# -*- coding: utf-8 -*-
#!/usr/bin/ruby -Ke
require "rubygems"
require "nokogiri"
require "open-uri"
require "kconv"

doc = Nokogiri.HTML(open("http://ja.wikipedia.org/wiki/%E6%97%A5%E6%9C%AC%E3%81%AE%E5%A5%B3%E5%84%AA%E4%B8%80%E8%A6%A7"))


         "a"=>[1..1], "i"=>[2..2], "u"=>[3..3], "e"=>[4..4], "o"=>[5..5], 
         "ka"=>[6..6], "ki"=>[7..7], "ku"=>[8..8], "ke"=>[9..9], "ko"=>[10..10],
         "sa"=>[11..11], "si"=>[12..12], "su"=>[13..13], "se"=>[14..14], "so"=>[15..15],
         "ta"=>[16..16], "ti"=>[17..17], "tu"=>[18..18], "te"=>[19..19], "to"=>[20..20],
         "na"=>[21..21], "ni"=>[22..22], "nu"=>[23..23], "ne"=>[24..24], "no"=>[25..25],
         "ha"=>[26..26], "hi"=>[27..27], "hu"=>[28..28], "he"=>[29..29], "ho"=>[30..30],
         "ma"=>[31..31], "mi"=>[32..32], "mu"=>[33..33], "me"=>[34..34], "mo"=>[35..35],
         "ya"=>[36..36], "yu"=>[37..37], "yo"=>[38..38],
         "ra"=>[39..39], "ri"=>[40..40], "ru"=>[41..41], "re"=>[42..42], "ro"=>[43..43], 
         "wa"=>[44..44]

   
    doc.search("ul").each do |f|
                f.search(a)each do |l|
        l.search("li").each do |m|
        	m.search("a").each do |n|
	        puts n

            end
     end
end

end