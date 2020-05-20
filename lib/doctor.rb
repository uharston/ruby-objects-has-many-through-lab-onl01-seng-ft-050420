
class Doctor
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(patient, appointment)
    Appointment.new(patient, self, appointment)
  end

  def appointments
    Appointment.all.select {|a| a.doctor == self}
  end

  def patients
    appointment.map {|a| a.patient}
  end

  def self.all
    @@all
  end


end 
