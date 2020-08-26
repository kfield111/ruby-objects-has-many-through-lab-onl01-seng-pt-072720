class Patient
  attr_accessor :name, :doctor

  @@all = []

  def initialize (name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def appointments
    Appointment.map {|temp| temp.patient == self}

  def new_appointment(date, doctor)
    Appointment.new(date, self, doctor)
  end

  def doctors
    Doctor.all.select {|temp| temp.patient == self}
  end


end
