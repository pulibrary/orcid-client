# frozen_string_literal: true
require "csv"

class CsvReader
  Person = Struct.new(:given_name, :family_name, :email)

  attr_reader :in_path
  def initialize(in_path:)
    @in_path = in_path
  end

  def people
    CSV.read(in_path).map do |row|
      Person.new(row[0], row[1], row[2])
    end
  end
end
