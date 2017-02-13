#using a test double allows you to test your code even when it relies on a class
#that is undefined or unavailable.
#also, this means that when there is a test failure, you can tell right away that
#it's because of an issue in your class and not a class written by someone else.

class ClassRoom
  def initialize(students)
    @students = students
  end

  def list_student_names
    @students.map(&:name).join(', ')
  end
end

describe ClassRoom do
  it "the list_student_names method should work correctly" do
    student1 = double('student')
    student2 = double('student')

    allow(student1).to receive(:name) {'John Smith'}
    allow(student2).to receive(:name) {'Jill Smith'}

    cr = ClassRoom.new [student1, student2]
    expect(cr.list_student_names).to eq('John Smith, Jill Smith')
  end
end

#when writing unit tests, it is convenient to run setup and teardown code
#before and after your tests.
#setup code is the code that configures  or "sets up" conditions for a test.
#Teardown code does the cleanup, it makes sure that the environemnt is in
#consistent state for subsequent tests.


#if each test (Example) needs an instance of SimpleClass, we can put that
#code in the before hook and not have to add it to each example.
class SimpleClass
  attr_accessor :message

  def initialize()
    puts "\nCreating a new instance of the SimpleClass class"
    @message = 'howdy'
  end

  def update_message(new_message)
    @message = new_message
  end
end

describe SimpleClass do
  before(:each) do
    @simple_class = SimpleClass.new
  end

  it "should have an initial message" do
    expect(@simple_class).to_not be_nil
    @simple_class.message = 'Something else . . .'
  end

  it "should be able to change its message" do
    @simple_class.update_message('a new message')
    expect(@simple_class).to_not be 'howdy'
  end
end


describe "Before and after hooks" do
  before(:each) do
    puts "Runs before each example"
  end

  after(:each) do
    puts "Runs after each example"
  end

  before(:all) do
    puts "Runs before all examples"
  end

  after(:all) do
    puts "Runs after all examples"
  end

  it "is the first Example in this spec file" do
    puts "Running the first example"
  end

  it "is the second Example in the spec file" do
    puts "Running the second example"
  end
end
