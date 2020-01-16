class DivisionsEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :divisions_employees, id: false do |t|
      t.belongs_to :division, index: true
      t.belongs_to :employee, index: true
    end
  end
end
