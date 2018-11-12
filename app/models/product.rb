class Product < ApplicationRecord
  include PgSearch
  pg_search_scope :search_everywhere, against: [:title, :description]
end
