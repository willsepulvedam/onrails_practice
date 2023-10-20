# frozen_string_literal: true

class Product < ApplicationRecord
  include pg_search: :Model

  has_one_attached :photo

  validates :title, presence: true
  validates :description, presence: true
  validates :price, presence: true

  belongs_to :category
end
