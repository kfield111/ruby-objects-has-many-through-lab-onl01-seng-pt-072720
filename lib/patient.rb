class Patient
  attr_accessor :name, :appointments, :doctors

  @@all = []

  def initialize (name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(date, doctor)
    Appointment.new (date, self, doctor)
  end

  def doctors
    Appointment.all.select {|temp| temp.patient == self}
  end


end
