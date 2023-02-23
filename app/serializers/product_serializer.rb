class ProductSerializer
  include FastJsonapi::ObjectSerializer
  attributes :price, :title, :published
end
