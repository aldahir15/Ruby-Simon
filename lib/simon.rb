class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    until @game_over == true
      take_turn
    end
    game_over_message
    reset_game
  end

  def take_turn
    show_sequence
    require_sequence
    round_success_message
    add_random_color
    @sequence_length += 1
  end

  def show_sequence
    p @seq.dup
    add_random_color
  end

  def require_sequence
    # puts "What is the sequence?"
  end

  def add_random_color
    num = rand(4)
    @seq << COLORS[num]
  end

  def round_success_message
    puts "Great job!"
  end

  def game_over_message
    puts "Sorry you lost"
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

end

new_simon = Simon.new
new_simon.add_random_color
new_simon.take_turn
# p new_simon.seq
# p new_simon.sequence_length
