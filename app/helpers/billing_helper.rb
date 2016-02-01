module BillingHelper

  def line_item_row item
    row = item_name_cell item
    if all_items?
      row << campaign_name_cell(item)
    end
    row << price_cell(item.booked_amount)
    row << price_cell(item.actual_amount)
    row << price_cell(item.adjustments)
    row << price_cell(item.subtotal, "total")

    content_tag :tr, row
  end

  def item_name_cell item
    content_tag :td, item.line_item_name, :class => "item_name"
  end

  def campaign_name_cell item
    link = link_to item.campaign_name, billing_path(:campaign_id =>item.campaign_id)
    content_tag :td, link, :class => "campaign_name"
  end

  def price_cell amount, klass=""
    klasses = "amount " + klass

    value = number_to_currency amount
    content_tag :td, value, :class => klasses
  end

  def total
    sum = 0
    @items.each do |item|
      sum += item.subtotal.round(2)
    end

    number_to_currency(sum)
  end

  def all_items?
    @campaign_id.blank?
  end

end
