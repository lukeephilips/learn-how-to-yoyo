class AddChapterNumber < ActiveRecord::Migration[5.0]
  def change
    add_column(:chapters, :chapter_number, :integer)
  end
end
