require "test_helper"

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "shows the app shell with lorem ipsum content" do
    get root_path

    assert_response :success
    assert_select "nav[aria-label=Primaria] a", 6
    assert_select "aside[aria-label=Conversationes] a", 7
    assert_select "[role=tab]", 3
    assert_select "[role=tab][aria-selected=true]", text: "Lorem"
    assert_select "article", 3
    assert_select "h1", "Lorem ipsum dolor sit amet"
    assert_select "aside[aria-label=Informatio]"
    assert_select "footer"
  end
end
