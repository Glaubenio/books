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
end
