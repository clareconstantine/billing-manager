class AddLineitemColumns < ActiveRecord::Migration
  def change
    add_column :lineitems, :campaign_id, :integer
    add_column :lineitems, :campaign_name, :string
    add_column :lineitems, :line_item_name, :string
    add_column :lineitems, :booked_amount, :decimal
    add_column :lineitems, :actual_amount, :decimal
    add_column :lineitems, :adjustments, :decimal
  end
end
