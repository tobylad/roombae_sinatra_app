require 'rpi_gpio'
# REMEMBER TO INCLUDE THIS IN GEMFILE AND REBUNDLE on the Pi!

module Roomba

  # Call this in methods BEFORE trying to call a number
  def self.set_numbering
    RPi::GPIO.set_numbering :board
  end

  # This will set the given GPIO to 'checkable'
  def self.input(pin_number)
    RPi::GPIO.setup pin_number, :as => :input
  end

  # This will allow the Roomba to take commands.
  def self.output(pin_number)
    RPi::GPIO.setup pin_number, :as => :output
  end

  # This takes all the above commands and readies the pin, DRYing our behavior methods.
  def self.prep_pin(pin_number)
    self.set_numbering
    self.input(pin_number)
    self.output(pin_number)
  end

  # This will double-check that pin is on or off. 
  # True means it's ON.  False means it's OFF.
  def self.on?(pin_number)
    RPi::GPIO.high?(pin_number)
  end

  # Turns Bae on or off.
  def self.power
    self.prep_pin(7)
    RPi::GPIO.set_high 7
    sleep(1)
    RPi::GPIO.set_low 7
    # For testing
    self.on?(7)
    self.reset
  end

  # Moves Bae forward.
  def self.forward
    self.prep_pin(12)
    RPi::GPIO.set_high 12
    sleep(5)
    RPi::GPIO.set_low 12
    # For testing
    self.on?(12)
    self.reset
  end

  # Rotates Bae left.
  def self.left(seconds)
    self.prep_pin(18)
    RPi::GPIO.set_high 18
    # Since we're not sure how many seconds it takes to complete the 90 degrees
    sleep(seconds)
    RPi::GPIO.set_low 18
    # For testing
    self.on?(18)
    self.reset
  end

  # Pauses Bae's movements.
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
    self.on?(num)
    self.reset
  end

  # This assures all pins are reset at the end of each command.
  def self.reset
    RPi::GPIO.clean_up    
  end

end


