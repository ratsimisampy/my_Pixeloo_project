# frozen_string_literal: true

class Order < ApplicationRecord
  belongs_to :cart
  belongs_to :user
  has_many :order_items

  before_save :update_subtotal
  enum status: [:ordered, :payed, :in_progress, :send]

  def subtotal
    order_items.collect { |oi| oi.valid? ? (oi.quantity * oi.unit_price) : 0 }.sum
  end

  private

  def set_order_status
    self.order_status_id = 1
  end

  def update_subtotal
    self[:subtotal] = subtotal
  end
end
