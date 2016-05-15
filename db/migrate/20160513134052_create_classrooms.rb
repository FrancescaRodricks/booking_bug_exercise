class CreateClassrooms < ActiveRecord::Migration
  def change
    create_table :classrooms do |t|
      t.string :name, null: false
      t.belongs_to :student, index: true
      t.belongs_to :teacher, index: true
      t.belongs_to :school, index: true
      t.timestamps null: false
    end
  end
end
