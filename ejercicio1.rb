 a = [1, 2, 3, 9, 1, 4, 5, 2, 3, 6, 6]
 b = a.map{|x| x+1}
 print b
 c = a.map{|x| x.to_f}
 print c
 d = a.map{|x| x.to_s}
 print d
 e = a.reject{|x| x<5}
 print e
 f = a.select{|x| x<=5}
 print f
 g = a.inject(0) {|sum, x| sum + x}
 print g
 print(a.group_by{|ele| ele.even?})
 print(a.group_by{|ele| ele>6})
