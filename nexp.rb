#

#require 'ruby gems'
require 'nokogiri'
require 'open-url'

birthday = '1&dd=1'
#page = open("http://geinou-shinbun.com/data/submit.php?mm=#{birthday}")
#html = Nokogiri::HTML(page.read, nil, 'Shift_JIS')
doc = Nokogiri::HTML(open('http://geinou-shinbun.com/data/submit.php?mm=#{birthday}'))

doc.xpath("//div")

# to_html
doc.css("div").each do |elm|
  p elm.to_html
end
   #=> "<div id=\"header\"><h1>title</h1></div>"
   #=> "<div id=\"content\"><h2>content tiltel</h2></div>"
   #=> "<div id=\"footer\">cont end</div>"

# inner_html
doc.css("div").each do |elm|
  p elm.inner_html
end
   #=> "<h1>title</h1>"
   #=> "<h2>content tiltel</h2>"
   #=> "cont end"

# content inner_text
doc.css("div").each do |elm|
  p elm.content
end
   #=> "title"
   #=> "content tiltel"
   #=> "cont end"



doc.css("div").each do |elm|
  p elm.content
end
   #=> "title"
   #=> "content tiltel"
   #=> "cont end"

doc.css("div").map { |e| puts e["id"]}

puts  "Entertainer whose birthday is"+"#{birthday}"+"are "