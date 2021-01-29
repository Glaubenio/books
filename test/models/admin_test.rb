# frozen_string_literal: true

# == Schema Information
#
# Table name: admins
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_admins_on_email                 (email) UNIQUE
#  index_admins_on_reset_password_token  (reset_password_token) UNIQUE
#
# require 'test_helper'

class AdminTest < ActiveSupport::TestCase
  test 'should create admin' do
    assert_difference('Admin.count') do
      admin = create(:admin, email: 'test@mail.com', password: '123456')
      assert_equal admin.email, 'test@mail.com'
      assert_equal admin.password, '123456'
    end
  end
end
