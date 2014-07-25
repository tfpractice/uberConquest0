class Inquiry < ActiveRecord::Base
	has_and_belongs_to_many :segments
	accepts_nested_attributes_for :segments, allow_destroy: false

	
end
