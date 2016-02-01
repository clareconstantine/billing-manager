module BillingHelper

  def line_item_row item
    row = content_tag(:td, item.line_item_name)
    row << content_tag(:td, item.campaign_name)
    row << content_tag(:td, item.booked_amount)
    row << content_tag(:td, item.actual_amount)
    row << content_tag(:td, item.adjustments)

    content_tag :tr, row
  end

end
