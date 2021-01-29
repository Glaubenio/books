# frozen_string_literal: true

# == Schema Information
#
# Table name: books
#
#  id          :integer          not null, primary key
#  author      :string           not null
#  description :string           not null
#  image       :string           not null
#  title       :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# require 'test_helper'

class BookTest < ActiveSupport::TestCase
  test 'should create book' do
    assert_difference('Book.count') do
      book = create(:book,
                    title: 'Cool Book Title',
                    author: 'Cool Author Name',
                    description: 'Lorem ipsum dolor sit amet',
                    image: 'https://thisisanimagelink.com/assets/image.png')
      assert_equal book.title, 'Cool Book Title'
      assert_equal book.author, 'Cool Author Name'
      assert_equal book.description, 'Lorem ipsum dolor sit amet'
      assert_equal book.image, 'https://thisisanimagelink.com/assets/image.png'
    end
  end
end
