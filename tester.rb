list = {"a"=>{"z"=>100, "y"=>200,"x"=>300},"b"=>{"w"=>400, "v"=>500, "u"=>600}}

#puts list["a"]

#puts list["a"]["z"]

list.each do|v|
    list[v].each_with_index do |m, q|
    	if q == 0
       puts m
        end
     end
end
