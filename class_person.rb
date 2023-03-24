# Define a class Person with:

#  - An attribute first_name
#  - An attribute last_name
#  - An attribute birthdate (we just assign a string to this attribute, e.g. "April 19, 1987")
#  - An instance method, full_name, that puts first_name and last_name together
#  - An instance method, age, that calculates the number of years between today and birthdate
require "date"

class Person
  attr_accessor :first_name, :last_name, :birthdate

  # =begin
  # rescue => exception

  # end
  # def initialize(first_name, last_name, birthdate)
  #   @first_name = first_name
  #   @last_name = last_name

  #   @birthdate = birthdate
  # end
  # =end

  def full_name
    return first_name + " " + last_name
  end

  def age
    dob = Date.parse(self.birthdate)
    now = Date.today
    age_in_days = now - dob
    age_in_years = age_in_days / 365

    return age_in_years.to_i
  end
end

#  new_person = Person.new("John", "leavell", "admin", "September 19, 1980")
#  p new_person

# #  new_person.last_name = "Mama"
# #  new_person.full_name

#  p other_person = Person.new("joe", "smith", "admin", "9,3,33")
#  p other_person.birthdate = "April 19, 1987d"
#  p other_person
#  p other_person.age

# Test your instance methods by adding to the end of this file:

#  new_person = Person.new
#  new_person.first_name = "Joe"
#  new_person.last_name = "Mama"
#  new_person.full_name
# Output:
#=>  "Joe Mama"

#  other_person = Person.new
#  other_person.birthdate = "April 19, 1987"
#  other_person.age
# Output:
#=>  45
