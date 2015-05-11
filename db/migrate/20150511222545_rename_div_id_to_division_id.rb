class RenameDivIdToDivisionId < ActiveRecord::Migration
  def change
    rename_column :employees, :div_id, :division_id
  end
end
