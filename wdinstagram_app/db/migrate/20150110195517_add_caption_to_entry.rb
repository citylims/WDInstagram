class AddCaptionToEntry < ActiveRecord::Migration
  def change
  	add_column :entries, :caption, :string
  end
end
