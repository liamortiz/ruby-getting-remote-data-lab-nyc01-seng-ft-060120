# Write your code here
class GetRequester
  
  def initialize(URL)
    self.URL = URL
  end
  
  def get_response_body
    uri = URI.parse(self.URL)
    response = Net::HTTP.get_response(uri)
    response.body
  end
  
  def parse_json
    JSON.parse(self.get_response_body)
  end
end