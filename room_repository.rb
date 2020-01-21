require 'csv'
require_relative 'room'

class RoomRepository
  def initialize(csv_file)
    @csv_file = csv_file
    @rooms = []
    load_csv
  end

  def find(id)
    @rooms.find { |room| room.id == id }
  end

  private

  def load_csv
    csv_options = { headers: :first_row, header_converters: :symbol }
    CSV.foreach(@csv_file, csv_options) do |row|
      row[:id]    = row[:id].to_i          # Convert column to Integer
      row[:number] = row[:number].to_i  # Convert column to Integer
      row[:capacity] = row[:capacity].to_i  # Convert column to Integer

      @rooms << Room.new(row)
    end

    @next_id = @rooms.empty? ? 1 : @rooms.last.id + 1
  end
end
