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
require 'test_helper'

class BookTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
