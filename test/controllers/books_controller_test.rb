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
  end

  test "should get edit" do
    get :edit, id: @book.id
    assert_response :success
  end

  test "should show book" do
    get :show, id: @book.id
    assert_response :success
  end

  test "shold create new book" do
    assert_difference('Book.count') do
      post :create, book: { title: "JavaScript Book", 
        resume: "Resume of JavaScript book", author: "Jane Doe", 
        status: "read", category: "technology" }
    end
  end

  test "should update a book" do
    put :update, id: @book.id, book: { title: "New Title" }
    @book.reload
    assert_equal "New Title", @book.title
  end

end
