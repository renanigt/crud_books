require 'test_helper'

class BookTest < ActiveSupport::TestCase
  test "book attributes must not be empty" do
    book = Book.new
    assert book.invalid?
    assert book.errors[:title].any?
    assert book.errors[:resume].any?
    assert book.errors[:author].any?
    assert book.errors[:status].any?
    assert book.errors[:category].any?
  end
end
