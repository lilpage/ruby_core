class Employee
  #stretch
  attr_accessor :first_name, :last_name, :email, :salary, :active

  def initialize(input_options = {first_name: "First", last_name: "Last", email: "default", salary: 0, active: true})
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
    @email = input_options[:email]
  end

# part 1
  def full_name
    if @last_name[-1] == "s"
      return "#{@first_name} #{@last_name}, Esquire"
    else
      return "#{@first_name} #{@last_name}"
    end
  end

  def print_info
    puts "#{@first_name} #{@last_name} makes #{@salary} a year."
  end

  def give_annual_raise
    @salary = 1.05 * @salary
  end

# part 3
  def email
    if @email == nil
      puts "#{@first_name[0,5]}#{@last_name}@gmail.com"
    else
      puts @email
    end
  end

end

# calls part 2
employee0 = Employee.new
employee0.print_info
employee1 = Employee.new({first_name: "Majora", last_name: "Carter", salary: 80000, active: true})
employee2 = Employee.new(first_name: "Danilo", last_name: "Campos", salary: 70000, active: true)
employee3 = Employee.new(first_name: "Chester", last_name: "Cheetah", email: "thecheesiest@gmail.com", salary: 1000000, active: true)
employee1.print_info
employee2.print_info
puts employee1.full_name
puts employee2.full_name
employee1.email
employee3.email

# stretch
# Wow I guess someone hired 100 identical drones. Captialism huh?
# employee_database = []
# index = 0
# while index < 100
#   employee_database << Employee.new({first_name: "Drone Number", last_name: index+1, salary: 0, active: true})
#   index += 1
# end
# # Print Empolyee Database
# index = 0
# while index < 100
#   puts employee_database[index].full_name
#   index +=1
# end