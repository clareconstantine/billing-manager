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

end
