class User < ActiveRecord::Base
	#attr_accessible :description, :email, :location, :name, :ide
	has_many :posts
end
