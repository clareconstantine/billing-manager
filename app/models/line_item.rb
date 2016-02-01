class LineItem < ActiveRecord::Base

  def subtotal
    actual_amount + adjustments
  end

end
