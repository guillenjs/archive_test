class CreateArchives < ActiveRecord::Migration[7.0]
  def change
    create_table :archives do |t|
      t.string :title
      t.references :archive_type, null: false, foreign_key: true
      t.json :archive_data

      t.timestamps
    end
  end
end
