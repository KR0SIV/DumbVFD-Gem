Gem::Specification.new do |s|
  s.name        = "dumbvfd"
  s.version     = "0.0.2"
  s.summary     = "VFD Dumb Terminal Interface"
  s.date        = "2014-09-09"
  s.description = "This gem uses a serial port to communicate with dumb terminal hardware. Such as a VFD Pole Display."
  s.authors     = ["Harold Giddings/KR0SIV"]
  s.email       = ["harold@giddings.me"]
  s.homepage    = "https://github.com/KR0SIV"
  s.files       = ["lib/dumbvfd.rb"]
  s.add_runtime_dependency 'serialport'
end