def sliding_max(ar, k)
  i = 0
  while ar[k - 1]
    if ar[i..k - 1]
      t = "#{(ar[i..k - 1]).max} #{}"
      print t
    end
    i += 1
    k += 1
  end
  print "\n"
end

ar = [3, 9, 7, 3, 0, -1, 11, 3]
sliding_max(ar[1..-1], ar[0])
