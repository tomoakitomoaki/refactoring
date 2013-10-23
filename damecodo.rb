num = gets.to_i
i=0
one=0
two=0
three=0
four=0
inp=gets.chomp.split(//)
for c in inp do
	    case c
	    	     when "1" then
	    	     	     one=one+1
	    	     when "2" then
	    	     	     two=two+1
	    	     when "3" then
	    	     	     three=three+1
                 when "4" then
                 	     four=four+1
        end
end

min=one
max=one
if two<min then
	    min=two
end
if three<min then
	    min=three
end
if four<min then
	    min=four
end
if two>max then
	    max=two
end
if three>max then
	    max=three
end
if four>max then
	    max=four
end

print max, " ", min,"\n"

#ソースurl : http://unkode-mania.net/view/522c89d8b2b9faa16b000006