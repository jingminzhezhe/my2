require 'Win32Api'

a=Win32API.new("C:/Users/zhaoyang/Desktop/rub/test.dll", "add", 'II', 'I') 
p a.call(1, 2)