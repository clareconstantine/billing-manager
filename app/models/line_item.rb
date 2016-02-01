class LineItem < ActiveRecord::Base

  def subtotal
    actual_amount.round(2) + adjustments.round(2)
  end

end
