# coding: utf-8
require 'test_helper'

class StoreControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_select '#columns #side a', :minimum => 4
    assert_select '#main .entry', 2
    assert_select 'h3', 'Programming Ruby 1.9'
    assert_select '.price', %r{\$[,\d]+\.\d\d}
  end

  test "markup needed for store.js.coffee is in place" do
    get :index
    assert_select '.store .entry > img', 2
    assert_select '.entry input[type=submit]', 2
  end
end
