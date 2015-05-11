require('spec_helper')

describe(Employee) do
  it('tells which division it belongs to') do
    temp_division = Division.create({:div_name => 'HR'})
    employee = Employee.create({:emp_name => 'Bob', :division_id => temp_division.id})
    expect(employee.division()).to(eq(temp_division))
  end
end
