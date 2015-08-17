Description: Allows you to send text to a dumb-terminal such as a VFD customer pole. (emax)

How to install: gem install dumbvfd

How to use: 

vfd = Vfd.new("comporthere") #write the full port name, example in windows for port 7 do "COM7".
vfd.connect #connects to the serial port
vfd.display("text to send")
vfd.clear_screen
vfd.display_warp("longer string of text to wrap") #this will wrap text between all lines available to your vfd display
vfd.close #close serial connection

Note that this gem was created for screens with 20 characters per line, you are limited to 20 per line because of this.
