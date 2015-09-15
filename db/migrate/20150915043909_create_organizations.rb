class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string :name, null: false
      t.string :public_name
      t.integer :type, null: false
      t.integer :pricing_policy, null: false
      t.references :country, index: true, null: false
      t.string :ancestry

      t.timestamps
    end
  end
end
