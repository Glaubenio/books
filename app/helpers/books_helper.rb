# frozen_string_literal: true

module BooksHelper
  def self.books_content(books)
    ActionController::Base.helpers.render(partial: 'books/book', collection: books, as: :book, formats: [:html])
  end
end
