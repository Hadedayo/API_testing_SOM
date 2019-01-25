describe MultiplePostcodeService do

  before(:all) do
    @postcodes_array = ['B322TL', 'IG110RU']
    @multiple_postcode_service = Postcodesio.new.multiple_postcodes_service
    @multiple_postcode_service.get_multiple_postcodes(@postcodes_array)
  end

  it "should respond with status message of 200" do
    expect(@multiple_postcode_service.get_status_code).to eq 200
  end

  it "should have a results hash" do
    expect(@multiple_postcode_service.get_results).to be_kind_of Hash
  end

  it "should return a postcode between 5-7 in length"  do
    expect(@multiple_postcode_service.get_postcode.length).to be_between(5,7).inclusive
  end

  it "should return a quality key integer between 1-9" do
    expect(@multiple_postcode_service.quality_key_integer.to_i).to be_kind_of Numeric
      expect(@multiple_postcode_service.quality_key_integer.to_i).to be_between(1,9).inclusive
  end

  it "should return an ordnance survey eastings value as integer" do
      expect(@multiple_postcode_service.ordnance_survey_eastings).to be_kind_of Integer
    end

    it "should return an ordnance survey northings value as integer" do
      expect(@multiple_postcode_service.ordnance_survey_northings).to be_kind_of Integer
    end

    it "should return a country which is one of the four constituent countries of the UK" do
      expect(@multiple_postcode_service.four_uk_countries).to eq("England").or eq("Wales").or eq("Scotland").or eq("Northern Ireland")
    end

    it "should return a string value for NHS authority " do
      expect(@multiple_postcode_service.nhs_authority).to be_kind_of String
    end

    it "should return a longitude float value" do
      expect(@multiple_postcode_service.longitude_value).to be_kind_of Float
    end

    it "should return a latitude float value" do
      expect(@multiple_postcode_service.latitude_value).to be_kind_of Float
    end

    it "should return a parliamentary constituency string" do
      expect(@multiple_postcode_service.parliamentary_constituency).to be_kind_of String
    end

    it "should return a european_electoral_region string" do
      expect(@multiple_postcode_service.european_electoral_region).to be_kind_of String
    end

    it "should return a primary_care_trust string" do
      expect(@multiple_postcode_service.primary_care_trust).to be_kind_of String
    end

    it "should return a region string" do
      expect(@multiple_postcode_service.region).to be_kind_of String
    end

    it "should return a parish string" do
      expect(@multiple_postcode_service.parish).to be_kind_of String
    end

    it "should return a lsoa string" do
      expect(@multiple_postcode_service.lsoa).to be_kind_of String
    end

    it "should return a msoa string" do
      expect(@multiple_postcode_service.msoa).to be_kind_of String
    end

    it "should return a admin_district string" do
      expect(@multiple_postcode_service.admin_district).to be_kind_of String
    end

    it "should return a incode string of three characters" do
      expect(@multiple_postcode_service.incode).to be_kind_of String
      expect(@multiple_postcode_service.incode.length).to eq 3
    end

    it "should return a incode string of 3-4 characters" do
      expect(@multiple_postcode_service.incode.length).to be_between(3,4).inclusive
    end

    it "should return an admin_ward string" do
      expect(@multiple_postcode_service.admin_ward).to be_kind_of String
    end

    it "should return an admin_county string" do
      expect(@multiple_postcode_service.admin_county).to be_kind_of String
    end
end
