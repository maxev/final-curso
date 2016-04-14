class ChangeColumIsAdminDefaultValue < ActiveRecord::Migration
  def change
  	change_column_default :users, :is_admin, from: nil, to: false
  end
end
