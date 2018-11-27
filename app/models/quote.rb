class Quote < ApplicationRecord
  # belongs_to :source
  validates_presence_of :value, :tags
end
