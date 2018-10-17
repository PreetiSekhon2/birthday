require "./lib/person.rb"

describe Person do
  subject(:person) {described_class.new("Fellini","01.01.1966")}
  it "checks anme of person" do
    expect(subject.name).to eq "Fellini"
  end
end
