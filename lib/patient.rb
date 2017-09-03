require 'pry'
require_relative "./appointment.rb"
require_relative "./doctor.rb"
require_relative "./patient.rb"

class Patient
  attr_accessor :appointments
  attr_reader :name

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    self.appointments << appointment
    appointment.patient = self
  end

  def doctors
    self.appointments.collect {|app| app.doctor}
  end
end


# binding.pry
#
# ""
