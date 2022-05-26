class MerchantsController < ApplicationController
  def index
    @merchants = MerchantFacade.all_merchants[:data]
  end
end
