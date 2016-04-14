class AddMarkIdToProduct < ActiveRecord::Migration
  def change
    add_reference :products, :mark, index: true, foreign_key: true
  end
end
