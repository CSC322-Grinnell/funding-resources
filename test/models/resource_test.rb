require 'test_helper'

class ResourceTest < ActiveSupport::TestCase
  
  def setup
    @resource = Resource.new(title: "Example Title", contact_person:
      "John")
  end

  test "should be valid" do
    assert @resource.valid?
  end
  
  test "title should be present" do
    @resource.title = " "
    assert_not @resource.valid?
  end
  
  test "contact_person should be present" do
    @resource.contact_person = " "
    assert_not @resource.valid?
  end
  
end
  
  

