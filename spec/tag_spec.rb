#Rspec tags provide an easy way to run only the tests in your spec files
describe "How to run specific Examples with Tags" do
  it "is a slow test", :slow => true do
    sleep 10
    puts 'This test is slow!'
  end

  it "is a fast test", :fast => true do
    puts "This test is fast!"
  end
end
