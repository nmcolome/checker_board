require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require '../lib/checker_board.rb'

class CheckerBoardTest < Minitest::Test
  def setup
    @board = CheckerBoard.new
  end

  def test_it_builds_a_3_x_3_board
    result = "X X\n X \nX X"

    assert_equal result, @board.build(3)
  end
end