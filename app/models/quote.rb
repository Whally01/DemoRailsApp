class Quote < ApplicationRecord
  belongs_to :source, required: false
end
