require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'
require_relative './exercise_7'

class Employee
  before_save :generate_password

  private
  def generate_password
    @random = [*('a'..'z'),*('0'..'9'),*('A'..'Z')].shuffle[0,8].join
    self.password = @random
  end

end

@store1.employees.create(first_name: "Libby", last_name: "Neighbour", hourly_rate: 50)
