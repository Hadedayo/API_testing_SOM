require 'httparty'
require 'json'

class MultiplePostcodeService
  include HTTParty

  base_uri 'https://api.postcodes.io'

  def get_multiple_postcodes(postcodes_array)
    @multiple_postcode_data = JSON.parse(self.class.post("/postcodes/", body: {"postcodes" => postcodes_array}).body)
  end

  def get_status_code
    @multiple_postcode_data['status']
  end

end
