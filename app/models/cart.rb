class Cart < ApplicationRecord
    has_many :order_items, dependent: :destroy

    # cette fonction permet d'ajouter un article au panier
    # def add_item(item)
    #    current_item = line_items.find_by(item: item)
    #
    #    if current_item
    #    current_item.increment(:quantity)
    #    else
    #    current_item = line_items.new(item: item)
    #    end
    #    current_item
    # end

    # cette fonction calcul le total du panier
    # def total
    #     line_items.to_a.sum(&:total)
    # end

end
