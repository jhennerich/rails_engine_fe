class ApplicationService
  def conn
    Faraday.new(url: 'http://localhost:3000/api/v1') do |faraday|
#      faraday.params['api_key'] = ENV['tmdb_key']
    end
  end

  def parse_json(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end
