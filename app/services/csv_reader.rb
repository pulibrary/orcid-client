# frozen_string_literal: true
require "csv"

class CsvReader
  Person = Struct.new(:given_name, :family_name, :email)

  attr_reader :in_path
  def initialize(in_path:)
    @in_path = in_path
  end

  def people
    CSV.read(in_path, headers: true).map do |row|
      Person.new(strip_initials(row[1]), strip_initials(row[2]), row[0])
    end
  end

  private

  def strip_initials(name)
    name.split
        .select { |x| x.chomp('.').length > 1 }
        .join(' ')
  end
end
