require 'httparty'
require 'json'

class SinglePostcodeService
  include HTTParty

  base_uri 'https://api.postcode.io'

  def get_single_postcode(postcode)

  end

end
