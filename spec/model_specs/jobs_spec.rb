require "rails_helper"

describe 'validations' do
  let(:valid_job) {Job.new(location: "test city", description: "fortran developer")}
  let(:locationless_job) {Job.new(location: nil, description: "django unchained developer")}
  let(:descriptionless_job) {Job.new(location: "Borneo", description: nil)}

  it 'is valid with a location and description' do
    expect(valid_job.valid?).to be true
  end

  it 'is invalid without a location' do
    expect(locationless_job.valid?).to be false
  end

  it 'is invalid without a description' do
    expect(descriptionless_job.valid?).to be false
  end
end

describe "get_jobs class method" do
  let(:github_response) {Job.get_jobs}
  it "should return an array the same length as the number of cities that are queried" do
    expect(github_response.length).to eq 7
  end

  it "should not contain an empty arrays in the array returned" do
    expect(github_response.include?([])).to eq false
  end
end

describe "format_frequencies class method" do
  it "should return a float" do
    expect(Job.format_frequency("java", "new york").class).to be Float
  end
end