# frozen_string_literal: true

require 'test_helper'

class BooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    sign_up_admin
    @book = create(:book)
  end

  test 'should get index' do
    get root_url
    assert_response :success
  end

  test 'should get new' do
    get new_book_url
    assert_response :success
  end

  test 'should create book' do
    assert_difference('Book.count') do
      post books_url, params: book_params
    end

    assert_redirected_to root_url
  end

  test 'should show book' do
    get book_url(@book)
    assert_response :success
  end

  test 'should get edit' do
    get edit_book_url(@book)
    assert_response :success
  end

  test 'should update book' do
    patch book_url(@book), params: book_params
    assert_redirected_to root_url
  end

  test 'should destroy book' do
    assert_difference('Book.count', -1) do
      delete book_url(@book)
    end

    assert_redirected_to root_url
  end

  def book_params
    {
      book: {
        title: Faker::Name.name,
        author: Faker::Name.name,
        image: Faker::Internet.url,
        description: Faker::Lorem.sentence(word_count: 30)
      }
    }
  end
end
