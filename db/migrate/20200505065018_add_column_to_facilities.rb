class AddColumnToFacilities < ActiveRecord::Migration[6.0]
  def change
    add_reference :facilities, :category, index: true
  end
end
