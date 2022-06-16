class AddAncestryToArchiveType < ActiveRecord::Migration[7.0]
  def change
    add_column :archive_types, :ancestry, :string
    add_index :archive_types, :ancestry
  end
end
