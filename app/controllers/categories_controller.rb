# frozen_string_literal: true

class CategoriesController < ApplicationController
  # def index; end

  def reflex
    items = Item.all.order(:id)
    @items = items.all.where(category_id: 1)
  end

  def eclairage
    items = Item.all.order(:id)
    @items = items.all.where(category_id: 2)
  end

  def objectif
    items = Item.all.order(:id)
    @items = items.all.where(category_id: 3)
  end
end
