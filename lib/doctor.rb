require 'pry'
require_relative "./appointment.rb"
require_relative "./doctor.rb"
require_relative "./patient.rb"

class Doctor
  attr_accessor :name, :appointments
  # attr_reader :apppointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    self.appointments << appointment
    appointment.doctor = self
  end

  def patients
    self.appointments.map do |appt|
      appt.patient
    end
  end

end


# binding.pry
#
# ""
