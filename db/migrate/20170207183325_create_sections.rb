class CreateSections < ActiveRecord::Migration[5.0]
  def change
    create_table :sections do |t|
      t.string :name
      t.integer :section_number
      t.integer :chapter_id
      t.timestamps
    end
    add_column(:lessons, :number, :integer)
    add_column(:lessons, :section_id, :integer)
  end
end
