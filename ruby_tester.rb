a = {"akai"=>1, "aoi"=>2, "aoki"=>3, "kuroi"=>4}

a["akai".."aoki"].each do |n|
	puts n
end