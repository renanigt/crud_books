require 'test_helper'

class CrudBookTest < ActionDispatch::IntegrationTest

  fixtures :books

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

  test "edit a book" do
    @book = books(:rails)

    get "/books/#{@book.id}/edit"
    assert_response :success

    put "/books/#{@book.id}", book: { title: "Elixir Book", 
        resume: "Resume of Elixir book", author: "José Valim" }
    assert_response :redirect
    follow_redirect!
    assert_response :success
  end

end
