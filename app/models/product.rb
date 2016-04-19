class Product < ActiveRecord::Base
	validates :name, presence: true
	validates :cod, presence: true
	validates :price, presence: true
	validates :description, length: { in: 6..400 }


	belongs_to :mark
	has_and_belongs_to_many :categories



	has_attached_file :image, styles: { medium: "650x350", home: "300x400" }, default_url: "/images/:style/missing.png"
  	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  	#validates :image, attachment_presence: true # no puede crearce sin imagen el producto.

  	scope :latest_four, -> { order('created_at desc').limit(4) }


end
