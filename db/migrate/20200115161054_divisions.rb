class Divisions < ActiveRecord::Migration[5.2]
  def change
    create_table(:divisions) do |t|
      t.column(:division_name, :string)

      t.timestamps()
    end
  end
end
