require 'test_helper'

class CrudBookTest < ActionDispatch::IntegrationTest
  
  test "create a book" do
    get "/books/new"
    assert_response :success

    post "/books", book: { title: "JavaScript Book", 
        resume: "Resume of JavaScript book", author: "Jane Doe", 
        status: "read", category: "technology" }
    assert_response :redirect
    follow_redirect!
    assert_response :success
  end

end
