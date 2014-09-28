class Recipee < ActiveRecord::Base

	has_attached_file :avatar, :default_url => "/images/:style/missing.png"

  	validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
  	validates_with AttachmentSizeValidator, :attributes => :avatar, :less_than => 5.megabytes


	
	#has_attached_file :photo

	#attr_accessor country_code

	validates :name, presence: true
	validates :ingredients, presence: true
	validates :food_type, presence: true
	validates :ocassion, presence: true
	validates :description, presence: true
	# validates :picture, presence: true
	validates :eating_qtty, presence: true
	validates :hours, presence: true
	validates :minutes, presence: true
	# validates :country, presence: true
	validates :difficulty, presence: true
	#validates :location, presence: true

	belongs_to :user

	# def self.search(search)
 #  		if search
 #    		find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
 #  		else
 #    		find(:all)
 #  		end
	# end


end
