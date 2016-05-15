class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|	
      t.string :name, null: false
      t.references :head_of_department, index: true
      t.timestamps null: false
    end
  end
end
