class Employees < ActiveRecord::Migration[5.2]
  def change
    create_table(:employees) do |t|
      t.column(:employee_name, :string)

      t.timestamps()
    end
  end
end
