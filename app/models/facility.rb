# == Schema Information
#
# Table name: facilities
#
#  id          :integer          not null, primary key
#  adress1     :string           not null
#  adress2     :string           not null
#  building    :string
#  description :text
#  fax         :string
#  name        :string           not null
#  postal_code :string           not null
#  prefecture  :string           not null
#  tel         :string
#  url         :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :integer
#
# Indexes
#
#  index_facilities_on_category_id  (category_id)
#
class Facility < ApplicationRecord
  belongs_to :category
  with_options presence: true do
    validates :name
    validates :postal_code
    validates :prefecture
    validates :adress1
    validates :adress2
  end
  
end
