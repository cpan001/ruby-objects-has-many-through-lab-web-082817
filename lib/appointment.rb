require 'pry'
require_relative "./appointment.rb"
require_relative "./doctor.rb"
require_relative "./patient.rb"

class Appointment
  attr_accessor :date, :patient, :doctor

  def initialize(date, doctor)
    @date = date
    @doctor = doctor
  end

  def doctor
    doctor = @doctor
    doctor.add_appointment(self)
  end

end

# doctor_who = Doctor.new("The Doctor")
# appointment = Appointment.new("Friday, January 32nd", doctor_who)
#
# binding.pry
#
# ""
