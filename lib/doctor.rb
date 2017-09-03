require 'pry'
require_relative "./appointment.rb"
require_relative "./doctor.rb"
require_relative "./patient.rb"

class Doctor
  attr_accessor :appointments
  attr_reader :name

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    self.appointments << appointment
    appointment.doctor = self
  end

  def patients
    self.appointments.collect {|app| app.patient}
  end
end


# binding.pry
#
# ""
