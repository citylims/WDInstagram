class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
    	t.text :body 
    	t.text :photo_url
    	t.text :date_taken
    end
  end
end
