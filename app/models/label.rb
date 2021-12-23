class Label < ApplicationRecord
  belongs_to :post
  belongs_to :user
end
