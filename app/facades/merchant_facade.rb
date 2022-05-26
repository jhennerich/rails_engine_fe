class MerchantFacade
  def self.service
    MerchantService.new
  end

  def self.all_merchants
    service.get_merchants
#    service.movies_by_query(search).map { |details| Movie.new(details) }
  end
end
