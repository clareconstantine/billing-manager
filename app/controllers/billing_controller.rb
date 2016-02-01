class BillingController < ApplicationController

  def index
    @campaign_id = params[:campaign_id]

    if !@campaign_id.blank?
      @items = LineItem.where(:campaign_id => @campaign_id)
      @invoice_name = @items.first.campaign_name
    else
      @items = LineItem.all
      @invoice_name = "all items"
    end

  end

  def sort_items
    sort_by = params[:sort_by]
    @campaign_id = params[:campaign_id]

    if !@campaign_id.blank?
      @items = LineItem.where(:campaign_id => @campaign_id)
    else
      @items = LineItem.all
    end

    @items = case sort_by
              when 'name'
                @items.sort_by { |item| item.line_item_name }
              when 'campaign'
                @items.sort_by { |item| item.campaign_name }
              when 'booked_amount'
                @items.sort_by { |item| item.booked_amount }
              when 'actual_amount'
                @items.sort_by { |item| item.actual_amount }
              when 'adjustments'
                @items.sort_by { |item| item.adjustments }
              when 'subtotal'
                @items.sort_by { |item| item.subtotal }
            end

    respond_to do |format|
        format.js
    end
  end

end
