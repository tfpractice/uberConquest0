class Segment < ActiveRecord::Base
	has_attached_file :image
	belongs_to :category
	has_and_belongs_to_many :inquiries
end
