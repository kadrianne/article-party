class Article < ApplicationRecord
  belongs_to :magazine
  belongs_to :author
end
