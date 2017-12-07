require 'rpi_gpio'

module Roomba

  def self.set_numbering
    RPi::GPIO.set_numbering :board
  end

  def self.input(pin_number)
    RPi::GPIO.setup pin_number, :as => :input
  end

  def self.output(pin_number)
    RPi::GPIO.setup pin_number, :as => :output
  end

  def self.prep_pin(pin_number)
    self.set_numbering
    self.input(pin_number)
    self.output(pin_number)
  end

  def self.on?(pin_number)
    RPi::GPIO.high?(pin_number)
  end

  def self.power
    self.prep_pin(32)
    RPi::GPIO.set_high 32
    sleep(3)
    RPi::GPIO.set_low 32
    puts self.on?(32)
    self.reset
  end

  def self.forward
    self.prep_pin(12)
    RPi::GPIO.set_high 12
    sleep(3)
    RPi::GPIO.set_low 12
    puts self.on?(12)
    self.reset
  end

  def self.right
    self.prep_pin(18)
    RPi::GPIO.set_high 18
    sleep(3)
    RPi::GPIO.set_low 18
    puts self.on?(18)
    self.reset
  end

  def self.left
    self.prep_pin(18)
    RPi::GPIO.set_high 18
    sleep(3)
    RPi::GPIO.set_low 18
    puts self.on?(18)
    self.reset
  end

  def self.pause
    self.prep_pin(32)
    RPi::GPIO.set_high 32
    sleep(3)
    RPi::GPIO.set_low 32
    puts self.on?(32)
    self.reset
  end

  def self.clean
    self.prep_pin(num)
    RPi::GPIO.set_high num
    sleep(5)
    RPi:GPIO.set_low num
    puts self.on?(num)
    self.reset
  end

  def self.reset
    RPi::GPIO.clean_up    
  end

end


