class Employee
  attr_reader :first_name, :last_name, :email, :salary, :active
  attr_writer :first_name, :last_name, :email, :salary, :active

  def initialize(input_options = {first_name: "First", last_name: "Last", email: "default", salary: 0, active: true})
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
    @email = input_options[:email]
  end

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


  def email
    if @email == nil
      puts "#{@first_name[0,5]}#{@last_name}@gmail.com"
    else
      puts @email
    end
  end

end

  
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