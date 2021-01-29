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
class Book < ApplicationRecord
  scope :search, lambda { |query|
    where('(description like :query) OR (title like :query) OR (author like :query)', query: "%#{query}%")
  }
end
