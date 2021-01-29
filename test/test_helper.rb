# frozen_string_literal: true

ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../config/environment', __dir__)
require 'rails/test_help'

class ActiveSupport::TestCase
  include Devise::Test::IntegrationHelpers
  include FactoryBot::Syntax::Methods

  def sign_up_admin
    admin = create(:admin)
    sign_in admin
  end
end
