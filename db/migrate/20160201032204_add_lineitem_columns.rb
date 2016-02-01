class AddLineitemColumns < ActiveRecord::Migration
  def change
    add_column :line_items, :campaign_id, :integer
    add_column :line_items, :campaign_name, :string
    add_column :line_items, :line_item_name, :string
    add_column :line_items, :booked_amount, :decimal
    add_column :line_items, :actual_amount, :decimal
    add_column :line_items, :adjustments, :decimal
  end
end
