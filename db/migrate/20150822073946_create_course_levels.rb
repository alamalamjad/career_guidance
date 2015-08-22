class CreateCourseLevels < ActiveRecord::Migration
  def change
    create_table :course_levels do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
