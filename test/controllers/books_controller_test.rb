require 'test_helper'

class BooksControllerTest < ActionController::TestCase
  setup do
    @book = books(:rails)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:books)
  end

  test "should get new" do
    get :new
    assert_response :success
    assert_not_nil assigns(:book)
  end

  test "shold create a new book" do
    assert_difference('Book.count') do
      post :create, book: { title: "JavaScript Book", 
        resume: "Resume of JavaScript book", author: "Jane Doe", 
        status: "read", category: "technology" }
    end
  end

end
