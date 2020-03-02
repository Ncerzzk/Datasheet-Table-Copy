

class PDF_Table
  attr_reader :text,:re

  def initialize(text)
    @text=text
  end

  # header eg:
  # PIN_NO Desc Name ATTR1 ATTR2 ATTR3
  def set_header(header)
    @header=header
    @re=@header
    @keys=@header.split(" ")
    @re.gsub!(/\./,'\.')
    @re.gsub!(/(NAME)|(ATTR\d)/,'(\w+?)')
    @re.gsub!(/DESC/,'(.+?)')
    @re.gsub!(/PIN_NO/,'(\d+)')
    @re.gsub!(/\s/,'\s')
    @re=Regexp.new(@re)
  end

  def scan(delimiter=',')
    if @header.nil?
      p 'please set header by call set_header'
      return
    end
    temp_result=@text.scan @re
    temp_result.map! do |single_result|
      single_result.join(delimiter)
    end
    print temp_result.join("\r\n")
  end

end

=begin
test_str="2 VDD Power Input power supply 3 VDDIO Power I/O reference voltage 4 VREG Power Internal voltage output 1 GND Ground Ground 21 GND Ground Ground Functional Group: Control Interface 16 MOSI Input Serial data input 17 SCLK Input Serial data clock 18 MISO Output Serial data output 19 NCS Input Chip select Functional Group: Functional I/O 7 NRESET Input Hardware reset (Active low) 15 MOTION Output Motion interrupt (Active low) 20 LED_N Input External LED control pin (Active low) (Refer Appendix B for more details) Functional Group: Special Function Pin 5 - 6 NC NC No connection (float) 8 - 14 NC NC No connection (float) 22 - 28 NC NC No connection (float) 29* GND PAD Ground Pad Bottom of COB package must be connected to circuit ground "
header="NAME DESC. PIN_NO"
header="PIN_NO NAME DESC"
a=PDF_Table.new test_str
a.set_header(header)
a.scan
=end