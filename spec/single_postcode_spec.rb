describe SinglePostcodeService do

  before(:all) do
    @single_postcode_service = Postcodesio.new.single_postcode_service
    @single_postcode_service.get_single_postcode('B322TL')
  end

  it "should respond with status message of 200" do
    expect(@single_postcode_service.get_status_code).to eq 200
  end

  it "should have a results hash" do
    expect(@single_postcode_service.get_results).to be_kind_of Hash
  end
end
