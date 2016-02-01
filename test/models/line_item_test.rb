require 'test_helper'

class LineItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "fixtures loaded correctly" do
    item = LineItem.find(123)
    assert item.line_item_name == "Intelligent Rubber Car - 771a"
  end
end
