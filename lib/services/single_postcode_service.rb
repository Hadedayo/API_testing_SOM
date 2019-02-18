require 'httparty'
require 'json'

class SinglePostcodeService
  include HTTParty

  base_uri 'https://api.postcodes.io'

  def get_single_postcode(postcode)
    @single_postcode_data = JSON.parse(self.class.get("/postcodes/#{postcode}").body)
  end

  def print_results
    @single_postcode_data
  end

  def get_status_code
    @single_postcode_data['status']
  end

  def get_results
    @single_postcode_data['result']
  end

  def get_postcode
     m = @single_postcode_data['result']['postcode']
     m.gsub(' ','')
  end

  def quality_key_integer
    @single_postcode_data['result']['quality']
  end

  def ordnance_survey_eastings
    @single_postcode_data['result']['eastings']
  end

  def ordnance_survey_northings
    @single_postcode_data['result']['northings']
  end

  def four_uk_countries
    @single_postcode_data['result']['country']
  end

  def nhs_authority
    @single_postcode_data['result']['nhs_ha']
  end

  def longitude_value
    @single_postcode_data['result']['longitude']
  end

  def latitude_value
    @single_postcode_data['result']['latitude']
  end

  def parliamentary_constituency
    @single_postcode_data['result']['parliamentary_constituency']
  end

  def european_electoral_region
    @single_postcode_data['result']['european_electoral_region']
  end

  def primary_care_trust
    @single_postcode_data['result']['primary_care_trust']
  end

  def region
    @single_postcode_data['result']['region']
  end

  def parish
    @single_postcode_data['result']['parish']
  end

  def lsoa
    @single_postcode_data['result']['lsoa']
  end

  def msoa
    @single_postcode_data['result']['msoa']
  end

  def admin_district
    @single_postcode_data['result']['admin_district']
  end

  def incode
    @single_postcode_data['result']['incode']
  end

  def admin_ward
    @single_postcode_data['result']['codes']['admin_ward']
  end

  def admin_county
    @single_postcode_data['result']['codes']['admin_county']
  end

  def get_ccg
    @single_postcode_data['result']['codes']['ccg']
  end

  def get_ced
    @single_postcode_data['result']['codes']['ced']
  end

  def get_nuts
    @single_postcode_data['result']['codes']['nuts']
  end

end
