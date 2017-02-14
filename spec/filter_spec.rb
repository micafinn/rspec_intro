# RSpec.describe "An Example Group with positive and negative Examples" do
#   context "when testing Ruby's build-in math library" do
#
#     it "can do normal numerical operations" do
#       expect(1 + 1 ).to eq(2)
#     end
#
#     it "generates and error when expected" do
#       expect{1/0}.to raise_error(ZeroDivisionError)
#     end
#
#   end
# end

#if we wanted to run only the positive tests in this file,
#or only the negative tests,
#we could easily to that with rspec filters.
#call $ rspec --tag positive filter_spec.rb
#call $ rspec --tag negative filter_spec.rb
# negative and positive are just examples, you can specify a filter
#with any name you want.

RSpec.describe "An Example Group with positive and negative Examples" do
  context "when testing Ruby's build-in math library" do

    it "can do normal numerical operations", positive: true do
      expect(1 + 1 ).to eq(2)
    end

    it "generates and error when expected", negative: true do
      expect{1/0}.to raise_error(ZeroDivisionError)
    end

  end
end
