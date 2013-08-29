list = {"a"=>[17, 33, 33], "b"=>[38, 30, 33], "c"=>[129.3, 129.3, 100]}


p "Question:"
list.each do|v|
#	v.each do |m|
		puts "Whose three-size is this?" 
		puts v
	#end
end

p "There are some hints to solve your problem,"

hint = {"*****first*****"=>" These three-size are belong to somebodies who are very simillar to each other in some terms.", 
	    "*****second*****"=>" These characters having this three size can make someone relax.",  
	    "*****third*****"=>" They are not human. Especially, the last character is a robot."}

hint.each do |c, v|
#	c.each. do |k, v|
		puts c
		puts v
    end
#end

p "Now, you know whose are they?"
p "If you want to confirm the answer, look at the bottom of this sorce code."



#Answer///////////////////////////
#a = 猫
#b = 犬
#c = ドラえもん



