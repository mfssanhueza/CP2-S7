nombres = ["Violeta", "Andino", "Clemente", "Javiera", "Paula", "Pia", "Ray"]
print(nombres.select{|ele| ele.length>5})
minusculas = nombres.map{|x| x.downcase}
print minusculas
nombres_p = nombres.select{|ele| ele[0]=='P'}
print nombres_p
names_length = nombres.map{|ele| ele.length}
print names_length
print(nombres.map{|ele| ele.gsub(/[aeiou]/,'')})
