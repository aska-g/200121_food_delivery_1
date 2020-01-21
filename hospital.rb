require_relative 'patient'
require_relative 'room'
require_relative 'patient_repository'
require_relative 'room_repository'


room_repository = RoomRepository.new('rooms.csv')
patient_repository = PatientRepository.new('patients.csv', room_repository)




ringo = Patient.new(name: 'Ringo')

patient_repository.add(ringo)

p patient_repository


# paul = Patient.new(name: 'paul')

# patient_repository.add(paul)

# p patient_repository
# bill = Patient.new(name: 'bill')

# room_303 = Room.new(capacity: 2, number: 303)

# room_303.add_patient(ringo)
# room_303.add_patient(paul)


