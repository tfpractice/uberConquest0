class Segment < ActiveRecord::Base
	belongs_to :category
	has_and_belongs_to_many :inquiries

	has_attached_file :image
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
