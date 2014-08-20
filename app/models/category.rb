class Category < ActiveRecord::Base
	has_many :segments
	has_attached_file :background
	validates_attachment_content_type :background, :content_type => /\Aimage\/.*\Z/

	
  scope :featured, -> {where(featured: true)}
  scope :nonFeatured, -> {where(featured: false)}

end
