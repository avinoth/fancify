RSpec.describe Fancify do
  include Fancify

  it "has a version number" do
    expect(Fancify::VERSION).not_to be nil
  end

  it "should return correct group for character" do
    expect(get_group_id('a')).to eq(0)
    expect(get_group_id('A')).to eq(0)
    expect(get_group_id('b')).to eq(1)
    expect(get_group_id('B')).to eq(1)
  end

  xit "should raise exception if character is unavailable" do
    expect(get_group_id('c')).to raise_error(RuntimeError, 'Character Not Found')
  end

  it "should return random character from that group" do
    random_character = get_random_character(0)
    contains_character = $groups[0].include?(random_character)
    expect(contains_character).to eq(true)
  end
end
