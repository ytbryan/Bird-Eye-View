require "test_helper"

class FrontPageTest < ActiveSupport::TestCase
  def front_page
    @front_page ||= FrontPage.new
  end

  def test_valid
    assert front_page.valid?
  end
end
