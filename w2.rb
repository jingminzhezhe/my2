require "Win32API"

title = "Rubyfu!"
message = "You've called the Windows API Successfully! \n\n@Runyfu"

api = Win32API.new('user32', 'MessageBoxA',['L', 'P', 'P', 'L'],'I')
api.call(0,message,title,0)
