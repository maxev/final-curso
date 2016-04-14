class Mark < ActiveRecord::Base
	has_many :products

	#validaciones
	validates :name, presence: true
end
