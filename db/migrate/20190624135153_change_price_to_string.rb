class ChangePriceToString < ActiveRecord::Migration[5.2]
  def change
    change_column :destinations, :transport_price, :string
  end
end
