def do_stuff(ar)
	#put code here
	i = 0
	arr = []
	while i < ar.length
		if ar[i] == -1
			arr.pop
		else
			arr.push(ar[i])
			print "#{ar[i]} #{ }"
		end
		i += 1
	end
	p arr
	print "\n"
end

do_stuff([3, 5, -1, -1, 7, 2, 11, -1, -1, 9])
