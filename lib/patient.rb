class Patient
  attr_accessor :name

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(app)
    @appointments << app
    app.patient = self
  end

  def appointments
    @appointments
  end

  def doctors
    self.appointments.collect do |app|
      app.doctor
    end
  end
end
