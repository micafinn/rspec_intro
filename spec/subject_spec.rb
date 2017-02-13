#when your tests are short and uncluttered, it becomes easier to focus on the
#expected behavior and not on the details fo how the tests are written.
#Rspec subjects are (yet another shortcut) allowing you to write simple,
#straight-forward tests.

class Person
  attr_reader :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end
end

describe Person do
  it "should create a new person with a first and last name" do
    person = Person.new 'John', 'Smith'

    expect(person).to have_attributes(first_name: 'John')
    expect(person).to have_attributes(last_name: 'Smith')
  end
end


#Now, with the subject features, we can reduce the amount of code:

class Person
  attr_reader :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end
end

describe Person.new 'John', 'Smith' do
  it { is_expected.to have_attributes(first_name: 'John') }
  it { is_expected.to have_attributes(last_name: 'Smith') }
end
