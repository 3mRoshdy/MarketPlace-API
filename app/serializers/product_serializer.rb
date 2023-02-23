class ProductSerializer
  include FastJsonapi::ObjectSerializer
  attributes :price, :title, :published

  belongs_to :user
end
