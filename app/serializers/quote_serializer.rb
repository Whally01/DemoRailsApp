class QuoteSerializer < ActiveModel::Serializer
  attributes :id, :value, :tags
end
