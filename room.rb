class Room
  attr_reader :number, :capacity, :patients
  attr_accessor :id

  def initialize(attr={})
    @number = attr[:number]
    @capacity = attr[:capacity] || 0
    @patients = attr[:patients] || []
    @id = attr[:id]
  end

  def full?
    @patients.size == @capacity
  end

  def add_patient(patient)
    raise Exception, 'This room is full, sorry' if full?

    patient.room = self
    @patients << patient
  end
end
