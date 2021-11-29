class ApplicationResource < JSONAPI::Resource
  abstract
  attributes :created_at, :updated_at

  def self.creatable_fields(context)
    super(context) - %i[created_at updated_at]
  end

  def self.updatable_fields(context)
    super(context) - %i[created_at updated_at]
  end
end
