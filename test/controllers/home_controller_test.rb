require "test_helper"

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "shows the app shell with lorem ipsum content" do
    get root_path

    assert_response :success
    assert_select "nav.rail a.rail__link", 6
    assert_select "aside.sidebar a.person", 7
    assert_select "[role=tab]", 3
    assert_select "[role=tab][aria-selected=true]", text: "Lorem"
    assert_select "article.card", 3
    assert_select "h1", "Lorem ipsum dolor sit amet"
    assert_select "aside.details"
    assert_select "footer.footer"
  end
end
