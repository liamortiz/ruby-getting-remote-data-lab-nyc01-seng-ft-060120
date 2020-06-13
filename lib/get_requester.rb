# Write your code here
class GetRequester
  
  def initialize(URL)
    uri = URI.parse(URL)
    response = Net::HTTP.get_response(uri)
  end
  
  def get_response_body
    response.body
  end
  
  def parse_json
  end
end