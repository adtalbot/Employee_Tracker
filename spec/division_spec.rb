require('spec_helper')

describe(Division) do
    it('will return an array of employees belonging to a division') do
    test_division1 = Division.create({:div_name => "HR"})
    test_employee1 = Employee.create({:emp_name => "Audrie", :division_id => test_division1.id})
    test_division2 = Division.create({:div_name => "IT"})
    test_employee2 = Employee.create({:emp_name => "Bob", :division_id => test_division2.id})
    expect(test_division1.employees()).to(eq([test_employee1]))
  end
end
