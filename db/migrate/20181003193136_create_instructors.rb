class CreateInstructors < ActiveRecord::Migration[5.2]
  def change
    create_table :instructors do |t|
      t.string  :first_name
      t.string  :last_name
      t.integer :age
      t.string  :salary
      t.string  :education

      t.timestamps
    end
  end
end