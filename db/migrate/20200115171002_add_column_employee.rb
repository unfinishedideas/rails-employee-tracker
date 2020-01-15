class AddColumnEmployee < ActiveRecord::Migration[5.2]
  def change
    add_column(:employees, :division_id, :integer)
  end
end
