require 'httparty'
require 'json'

class MultiplePostcodeService
  include HTTParty

  base_uri 'https://api.postcode.io'

  def get_multiple_postcodes(postcodes_array)

  end

end
