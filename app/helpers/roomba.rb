require 'rpi_gpio'

module Roomba

  # Call this in methods BEFORE trying to call a number
  def set_numbering
    RPi::GPIO.set_numbering :board
  end

  # This will set the given GPIO to 'checkable'
  def input(pin_number)
    RPi::GPIO.setup pin_number, :as => :input
  end

  # This will allow the Roomba to take commands.
  def output(pin_number)
    RPi::GPIO.setup pin_number, :as => :output
  end

  # This takes all the above commands and readies the pin, DRYing our behavior methods.
  def prep_pin(pin_number)
    set_numbering
    input(pin_number)
    output(pin_number)
  end

  # This will double-check that pin is on or off. 
  # True means it's ON.  False means it's OFF.
  def on?(pin_number)
    RPi::GPIO.high?(pin_number)
  end

  # Turns Bae on or off.
  def power
    prep_pin(7)
    RPi::GPIO.set_high 7
    sleep(1)
    RPi::GPIO.set_low 7
    # For testing
    on?(7)
    clean_up
  end

  # Moves Bae forward.
  def forward
    prep_pin(12)
    RPi::GPIO.set_high 12
    sleep(5)
    RPi::GPIO.set_low 12
    # For testing
    on?(12)
    clean_up
  end

  # Rotates Bae left.
  def left(seconds)
    prep_pin(18)
    RPi::GPIO.set_high 18
    # Since we're not sure how many seconds it takes to complete the 90 degrees
    sleep(seconds)
    RPi::GPIO.set_low 18
    # For testing
    on?(18)
    clean_up
  end

  # Pauses Bae's movements.
  def pause
    prep_pin(32)
    RPi::GPIO.set_high 32
    sleep(1)
    RPi::GPIO.set_low 32
    on?(32)
    clean_up
  end

  # This assures all pins are reset at the end of each command.
  def clean_up
    RPi::GPIO.clean_up    
  end

end


