class Recipee < ActiveRecord::Base

	#has_attached_file :avatar, :default_url => "/images/:style/missing.png"
	has_attached_file :avatar,:default_url => "cookits3bucket.amazonaws.com",
                :storage => :s3,
                :bucket => 'cookits3bucket'

  	validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
  	validates_with AttachmentSizeValidator, :attributes => :avatar, :less_than => 4.megabytes


	
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
	validates :country, presence: true
	validates :difficulty, presence: true
	#validates :location, presence: true

	belongs_to :user

	self.per_page = 10

	# def self.search(search)
 #  		if search
 #    		find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
 #  		else
 #    		find(:all)
 #  		end
	# end


end
