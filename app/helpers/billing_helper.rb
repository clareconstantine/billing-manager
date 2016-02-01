module BillingHelper

  def line_item_row item
    row = item_name_cell item
    row << campaign_name_cell(item)
    row << price_cell(item.booked_amount)
    row << price_cell(item.actual_amount)
    row << price_cell(item.adjustments)
    row << price_cell(subtotal(item), "subtotal")

    content_tag :tr, row
  end

  def item_name_cell item
    content_tag :td, item.line_item_name, :class => "item_name"
  end

  def campaign_name_cell item
    # todo: make this a link to just displaying items for this campaign
    link = item.campaign_name
    content_tag :td, link, :class => "campaign_name"
  end

  def price_cell amount, klass=""
    klasses = "amount " + klass

    value = number_to_currency amount
    content_tag :td, value, :class => klasses
  end

  def subtotal item
    subt = item.actual_amount + item.adjustments
  end

end
