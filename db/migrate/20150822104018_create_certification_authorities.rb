class CreateCertificationAuthorities < ActiveRecord::Migration
  def change
    create_table :certification_authorities do |t|
      t.string :name
      t.string :code
      t.belongs_to :cert_authority_type, index: true, foreign_key: true
      t.belongs_to :city, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
