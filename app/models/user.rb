class User < ActiveRecord::Base
	#attr_accesible :description, :email, :location, :name

	has_many :posts
end
