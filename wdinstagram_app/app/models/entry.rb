class Entry < ActiveRecord::Base
	validates :author, :photo_url, presence: true
end