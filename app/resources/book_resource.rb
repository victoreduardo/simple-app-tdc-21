class BookResource < ApplicationResource
  attributes :title, :description

  has_one :author

  filters :title, :author
end
