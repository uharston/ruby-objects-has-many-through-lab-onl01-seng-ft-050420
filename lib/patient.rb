
class Patient 
  attr_accessor

  @@all = []

  def initialize(name)
    @name = name 
    @@all << self 
  end 

  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end 

  def appointment 
    Appointment.all.select{|a| a.patient == self}
   end 

   def doctors
     appointment.map {|a| a.doctor}
   end 

  def self.all 
    @@all 
  end 
end 