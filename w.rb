require "Win32API"    
# def get_computer_name
  name = " " * 128
  size = "128"
  p Win32API.new('kernel32', 'GetComputerName', ['P', 'P'], 'I').call(name, size)  
  p name.unpack("A*")  
# end 
