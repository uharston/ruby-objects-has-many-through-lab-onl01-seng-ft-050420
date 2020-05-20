require 'pry'
class Doctor
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
  end

  def appointments
    Appointment.all.select {|a| a.doctor == self}
  end

  def patients
    appointments.map { |a| a.patient}
  end

  def self.all
    @@all
  end


end
