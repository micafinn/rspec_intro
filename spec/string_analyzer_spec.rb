require_relative '../string_analyzer'

describe StringAnalyzer do
  context "With valid input" do

    it "should detect when a string contains vowels" do
      #instantiate a class object
      sa = StringAnalyzer.new
      #define a string variable
      test_string = 'uuu'
      #set expectations to a matcher
      #expect(sa.has_vowels?(test_string)).to be true, same as below
      expect(sa.has_vowels? test_string).to be true
    end

    it "should detect when a string doesn't contain vowels" do
      sa = StringAnalyzer.new
      test_string = "bcdf"
      expect(sa.has_vowels? test_string).to be false
    end


  end
end


describe "An example of the equality Matchers" do

  it "should show how the equality Matchers work" do
    a = "test string"
    b = a

    # The following Expectations will all pass
    expect(a).to eq "test string"
    expect(b).to eql "test string"
    expect(a).to be b
    expect(a).to equal b
  end

  it "should show value comparison matcher at work" do
    a = 1
    b = 5
    c = 2

    expect(b).to be > 4
    expect(a).to be <= 1
    expect(c).to be_between(a, b).inclusive
  end
end

describe "The tut example of the comparison Matchers" do

  it "should show how the comparison Matchers work" do
  a = 1
  b = 2
  c = 3
  d = 'test string'

  #The following Expectations will all pass
  expect(b).to be > a
  expect(a).to be >= a
  expect(a).to be < b
  expect(b).to be <= b
  expect(c).to be_between(1,3).inclusive
  expect(b).to be_between(1,3).exclusive
  expect(d).to match /TEST/i
  end

end