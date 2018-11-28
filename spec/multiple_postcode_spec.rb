describe MultiplePostcodeService do

  before(:all) do
    @postcodes_array = ['B322TL', 'IG110RU']
    @multiple_postcode_service = Postcodesio.new.multiple_postcodes_service
    @multiple_postcode_service.get_multiple_postcodes(@postcodes_array)
  end

  it "should respond with status message of 200" do
    expect(@multiple_postcode_service.get_status_code).to eq 200
  end

  # it "should have a results hash" do
  #   expect(@single_postcode_service.get_results).to be_kind_of Hash
  # end
end
