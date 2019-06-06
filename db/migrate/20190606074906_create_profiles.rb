class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :short_description
      t.text :long_description
      t.jsonb :contact_methods, null: false, default: []
      t.string :tags, array: true, null:  false, default: []
      t.string :looking_for
      t.references :entity, null: false, foreign_key: true

      t.timestamps
    end

    add_index :profiles, :tags, using: 'gin'
  end
end
