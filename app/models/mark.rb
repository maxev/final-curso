class Mark < ActiveRecord::Base
	has_many :products

	#validaciones
	validates :name, presence: true

	#scope :por_marca, -> (id) { where("mark_id: < ?", id) }
end
