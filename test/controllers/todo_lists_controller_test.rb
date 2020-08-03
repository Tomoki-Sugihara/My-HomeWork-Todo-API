require 'test_helper'

class TodoListsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get todo_lists_index_url
    assert_response :success
  end

  test "should get create" do
    get todo_lists_create_url
    assert_response :success
  end

  test "should get delete" do
    get todo_lists_delete_url
    assert_response :success
  end

  test "should get update" do
    get todo_lists_update_url
    assert_response :success
  end

end
