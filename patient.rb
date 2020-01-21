class Patient
  attr_reader :name, :age, :healthy
  attr_accessor :room, :id

  def initialize(attr={})
    @name = attr[:name]
    @age = attr[:age]
    @healthy = attr[:healthy] || false
    @id = attr[:id]
    @room = attr[:room]
  end

  def cure
    @healthy = true
  end
end

