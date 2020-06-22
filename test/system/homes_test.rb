require "application_system_test_case"

class HomesTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit '/'
  
    assert_text "Sign in"
  end
end
