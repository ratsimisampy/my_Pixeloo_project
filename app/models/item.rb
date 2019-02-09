# frozen_string_literal: true

# == Schema Information
#
# Table name: items
#
#  id          :bigint(8)        not null, primary key
#  title       :string
#  description :text
#  price       :float            not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#


class Item < ApplicationRecord
  validates :description, presence: true, length: { maximum: 100 }
  validates :title, presence: true, uniqueness: true
  validates :price, presence: true, numericality: { only_float: true }
end
