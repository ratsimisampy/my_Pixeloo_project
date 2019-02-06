# frozen_string_literal: true

require 'pry'

class Item < ApplicationRecord
  validates :description, presence: true, length: { maximum: 100 }
  validates :title, presence: true, uniqueness: true
  validates :price, presence: true, numericality: { only_float: true }
end
