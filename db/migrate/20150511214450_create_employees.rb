class CreateEmployees < ActiveRecord::Migration
  def change
    create_table(:employees) do |t|
      t.column(:emp_name, :string)
      t.column(:div_id, :integer)

      t.timestamps()
    end
    create_table(:divisions) do |t|
      t.column(:div_name, :string)

      t.timestamps()
    end
  end
end
