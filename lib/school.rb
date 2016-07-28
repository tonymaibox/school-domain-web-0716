# code here!
require 'pry'

class School
	attr_accessor :name

	def initialize(name)
		@name = name
		@roster = {}
	end

	def roster
		@roster
	end

	def add_student(student, grade)
		if @roster.has_key?(grade)
			@roster[grade] << student
		else
			@roster[grade] = []
			@roster[grade] << student
		end
	end

	def grade(grade)
		@roster[grade]
	end

	def sort
		# binding.pry
		@roster.each_value do |value|
			value.sort!
		end
	end

end