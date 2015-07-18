require "test_helper"

class AccountTest < ActiveSupport::TestCase
  def account
    @account ||= Account.new
  end

  def test_valid
    assert account.valid?
  end
end
