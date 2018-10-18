require "./lib/person.rb"

describe Person do
  subject(:fellini) {described_class.new("Fellini","1966","10","17")}
  subject(:marcello) {described_class.new("Marcello","2018","10","18")}


  it "checks name of person" do
    expect(fellini.get_name).to eq "Fellini"
  end

  it "correctly confirms - it is NOT birthday" do
    expect(fellini.isBirthday).to eq false
  end

  it "correctly confirms birthday" do
    expect(marcello.isBirthday).to eq true
  end

  it "calculates age" do
    expect(fellini.get_age).to eq 52
    expect(marcello.get_age).to eq 0
  end

  it "calculates days to birthday" do
    expect(fellini.get_daystobirthday).to eq 364
    expect(marcello.get_daystobirthday).to eq 365
  end

end
