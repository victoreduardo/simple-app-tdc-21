class AuthorResource < ApplicationResource
  attributes :first_name, :last_name

  has_many :books

  filters :first_name, :last_name
end
