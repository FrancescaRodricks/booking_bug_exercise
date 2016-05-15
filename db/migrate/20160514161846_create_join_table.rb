class CreateJoinTable < ActiveRecord::Migration
  def change
    create_join_table :teachers, :schools do |t|
    	t.belongs_to :teacher , index: true
    	t.belongs_to :school, index: true
      # t.index [:teacher_id, :school_id]
      # t.index [:school_id, :teacher_id]
    end
  end
end
