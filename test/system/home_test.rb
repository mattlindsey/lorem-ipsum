require "application_system_test_case"

class HomeTest < ApplicationSystemTestCase
  test "selecting a tab marks it as the only selected tab" do
    visit root_path
    assert_selector "[role=tab][aria-selected=true]", text: "Lorem"

    click_on "Ipsum"

    assert_selector "[role=tab][aria-selected=true]", count: 1
    assert_selector "[role=tab][aria-selected=true]", text: "Ipsum"
  end
end
