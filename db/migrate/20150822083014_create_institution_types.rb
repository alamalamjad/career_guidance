class CreateInstitutionTypes < ActiveRecord::Migration
  def change
    create_table :institution_types do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
