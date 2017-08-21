class Game

  attr_accessor :gesture_1, :gesture_2

  def initialize(gesture_1, gesture_2)
    @gesture_1 = gesture_1
    @gesture_2 = gesture_2
  end


  def play()

    if @gesture_1 == "rock"

      if @gesture_2 == "paper"
        result = "paper covers rock - paper wins"
      elsif @gesture_2 == "scissors"
        result = "rock smashes scissors - rock wins"
      else @gesture_2 = "rock"
        result = "you tied! try again"
      end

    elsif @gesture_1 == "paper"

      if @gesture_2 == "rock"
        result = "paper covers rock - paper wins"
      elsif @gesture_2 == "scissors"
        result = "scissors cut paper - scissors win"
      else @gesture_2 = "paper"
        result = "you tied! try again"
      end

    elsif @gesture_1 == "scissors"

      if @gesture_2 == "paper"
        result = "scissors cut paper - scissors win"
      elsif @gesture_2 == "rock"
        result = "rock crushes scissors - rock wins"
      else @gesture_2 = "scissors"
        result = "you tied! try again"
      end

    # elsif @gesture_1 == @gesture_2
    #   result = "you tied! try again"
    #   return result

    else
      result = "that's not a ro sham bo move!"
    end
    return result

  end

end

# def play
#   case gestures
#     if (@gesture_1 == "rock" && @gesture_2 == "scissors")
#       puts "rock beats scissors"
#     if (@gesture_1 == "rock" && @gesture_2 == "paper")
#       puts "paper beats rock"
#     if (@gesture_1 == "paper" && @gesture_2 == "scissors")
#       puts "scissors beats paper"
#     if (@gesture_1 == "paper" && @gesture_2 == "rock")
#       puts "paper beats rock"
#     if (@gesture_1 == "scissors" && @gesture_2 == "rock")
#       puts "rock beats scissors"
#     if (@)
#   end
# end
