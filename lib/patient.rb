require 'pry'
require_relative "./appointment.rb"
require_relative "./doctor.rb"
require_relative "./patient.rb"

class Patient
  attr_accessor :name, :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    self.appointments << appointment
    appointment.patient = self
  end

  def doctors
    self.appointments.map do |appt|
      appt.doctor
    end
  end

end


# binding.pry
#
# ""
