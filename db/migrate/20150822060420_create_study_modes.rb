class CreateStudyModes < ActiveRecord::Migration
  def change
    create_table :study_modes do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
