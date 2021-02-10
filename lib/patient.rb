class Patient 

    attr_accessor :name 

    @@all = []

    def initialize(name)
        @name = name 
        @@all << self 
    end 

    def self.all 
        @@all 
    end 

    def appointments 
        Appointment.all.select {|appointment| appointment.patient == self}
    end 

    def new_appointment(date, doctor)
        Appointment.new(date, self, doctor)
    end 

    def doctors 
        appointments.map {|doctor_name| doctor_name.doctor}
    end 

end 
