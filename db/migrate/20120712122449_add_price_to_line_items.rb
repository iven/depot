class AddPriceToLineItems < ActiveRecord::Migration
  def change
    add_column :line_items, :price, :decimal, precision: 8, scale: 2
    LineItem.all.each do |line_item|
      if line_item.product
        line_item.price = line_item.product.price
      else
        line_item.destroy
      end
    end
  end
end
