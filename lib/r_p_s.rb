require('pry')

class Fixnum
  define_method(:randomizer) do
    computer_result = ""
    computer = Random.new
    integer = computer.rand(self).to_i()
    if integer.==(0)
      computer_result = "Rock"
    elsif integer.==(1)
      computer_result = "Scissors"
    else
      computer_result ="Paper"
    end
    computer_result
  end
end

class String
  define_method(:beats?) do |computer|
    if self.==("Rock")
      computer.==("Scissors")
    elsif self.==("Scissors")
      computer.==("Paper")
    elsif self.==("Paper")
      computer.==("Rock")
    end
  end
end
