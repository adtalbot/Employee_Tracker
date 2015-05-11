require('sinatra')
require('sinatra/reloader')
require('sinatra/activerecord')
require('./lib/employee')
require('./lib/division')
also_reload('./lib/**/*.rb')

get('/') do
  @employees = Employee.all
  @divisions = Division.all
  erb(:index)
end

post('/add_division') do
  @new_division = params.fetch('new_division_test')
  Division.create({:div_name => @new_division})
  @employees = Employee.all
  @divisions = Division.all
  erb(:index)
end

post('/add_employee') do
  @new_employee = params.fetch('new_employee_test')
  Employee.create({:emp_name => @new_employee})
  @employees = Employee.all
  @divisions = Division.all
  erb(:index)
end

get('/division/:id') do
  @division_id = params.fetch('id')
  @division = Division.find(@division_id)
  erb(:division_info)
end

get('/employee/:id') do
  @employee_id = params.fetch('id')
  @employee = Employee.find(@employee_id)
  erb(:employee_info)
end
