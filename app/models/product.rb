class Product < ActiveRecord::Base
	#validaciones
	validates :cod, presence: true
	validates :price, presence: true
	validates :description, length: { in: 6..400 }


	#asosiaciones
	belongs_to :mark



	#paperclip
	#modificar las versiones de imagenes deacuerdo al frontend.
	has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  	#validates :image, attachment_presence: true # no puede crearce sin imagen el producto.


end
