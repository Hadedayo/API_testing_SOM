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

  def get_results
    @multiple_postcode_data['result'][0]
  end

  def get_postcode
     m = @multiple_postcode_data['result'][0]['result']['postcode']
     m.gsub(' ','')
  end

  def quality_key_integer
    @multiple_postcode_data['result'][0]['result']['quality']
  end

  def ordnance_survey_eastings
    @multiple_postcode_data['result'][0]['result']['eastings']
  end

  def ordnance_survey_northings
    @multiple_postcode_data['result'][0]['result']['eastings']
  end

  def four_uk_countries
    @multiple_postcode_data['result'][0]['result']['country']
  end

  def nhs_authority
    @multiple_postcode_data['result'][0]['result']['nhs_ha']
  end

  def longitude_value
    @multiple_postcode_data['result'][0]['result']['longitude']
  end

  def latitude_value
    @multiple_postcode_data['result'][0]['result']['latitude']
  end

  def parliamentary_constituency
    @multiple_postcode_data['result'][0]['result']['parliamentary_constituency']
  end

  def european_electoral_region
    @multiple_postcode_data['result'][0]['result']['european_electoral_region']
  end

  def primary_care_trust
    @multiple_postcode_data['result'][0]['result']['primary_care_trust']
  end

  def region
    @multiple_postcode_data['result'][0]['result']['region']
  end

  def parish
    @multiple_postcode_data['result'][0]['result']['parish']
  end

  def lsoa
    @multiple_postcode_data['result'][0]['result']['lsoa']
  end

  def msoa
    @multiple_postcode_data['result'][0]['result']['msoa']
  end

  def admin_district
    @multiple_postcode_data['result'][0]['result']['admin_district']
  end

  def incode
    @multiple_postcode_data['result'][0]['result']['incode']
  end

  def admin_ward
    @multiple_postcode_data['result'][0]['result']['codes']['admin_ward']
  end

  def admin_county
    @multiple_postcode_data['result'][0]['result']['codes']['admin_county']
  end

end
