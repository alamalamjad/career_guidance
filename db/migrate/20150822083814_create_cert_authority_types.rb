class CreateCertAuthorityTypes < ActiveRecord::Migration
  def change
    create_table :cert_authority_types do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
