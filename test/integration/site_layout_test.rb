require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  test "layout links" do
    get root_path
    assert_template 'pages/home'
    assert_select "a[href=?]", root_path, 2
  end
end
