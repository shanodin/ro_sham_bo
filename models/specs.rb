require("minitest/autorun")
require_relative("console.rb")

class TestRps < MiniTest::Test


  def test_rock_beats_scissors
    game1 = Game.new("rock", "scissors")
    assert_equal("rock smashes scissors - rock wins", game1.play)
  end

  def test_scissors_tie
    game2 = Game.new("scissors", "scissors")
    assert_equal("you tied! try again", game2.play)
  end

  def test_error
    game3 = Game.new("goop", "bloop")
    assert_equal("that's not a ro sham bo move!", game3.play)
  end

  def test_paper_beats_rock
    game4 = Game.new("rock", "paper")
    assert_equal("paper covers rock - paper wins", game4.play)
  end

end
