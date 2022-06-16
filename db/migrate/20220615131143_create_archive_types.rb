class CreateArchiveTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :archive_types do |t|
      t.string :archive_type

      t.timestamps
    end
  end
end
