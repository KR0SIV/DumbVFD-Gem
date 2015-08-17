require 'rubygems'
require 'serialport'

class Vfd
  def initialize(port)
    @port  = port
  end
  
   def connect()
		$serial = SerialPort.new("#{@port}", 9600)
		#$serial.read_timeout = 4000
   end
   
   def display(data)
		lan = data.length
		if lan < 20 then
			$serial.write("#{data.center(20)}")
			else
			$serial.write("#{data[0...19].center(19)}") #this will chop off all characters after the first 20. IE: For two lines, you need two writes.
		end
   end
   
   def display_wrap(data)
	$serial.write("#{data[0...39]}")
   end

   def clear_screen
		$serial.write("\x0\x0a\x0\x0d")
   end
   
   def close
		$serial.close
   end
   
end