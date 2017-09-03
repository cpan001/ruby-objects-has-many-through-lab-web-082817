require 'pry'
require_relative "./appointment.rb"
require_relative "./doctor.rb"
require_relative "./patient.rb"

class Appointment
  attr_accessor :doctor, :patient, :date

  def initialize(date, doctor)
    @date = date
    @doctor = doctor
    doctor.add_appointment(self)
  end

end

# doctor_who = Doctor.new("The Doctor")
# appointment = Appointment.new("Friday, January 32nd", doctor_who)
#
# binding.pry
#
# ""
