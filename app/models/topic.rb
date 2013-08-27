class Topic < ActiveRecord::Base
	attr_accessible :name

	has_many :memberships
	has_many :users, through: :memberships 

	validates :name, presence: true, length: {maximum: 20}

end
