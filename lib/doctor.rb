class Doctor
    attr_accessor :name

@@all = []

    def initialize (name)
      @name = name
      @@all << self
    end

    def self.all
      @@all
    end

    def appointments
      Appointment.all.select {|temp| temp.doctor == self}
    end

    def new_appointment (date, patient)
      Appointment.new(date, self, patient)
    end

    def patients
      appointments.all.collect {|temp| temp.doctor == self}
    end

  end
