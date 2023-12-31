class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = Array.new
  end

  def play
    until @game_over
      take_turn
    end
    game_over_message
    reset_game
  end

  def take_turn
    show_sequence
    require_sequence
    if !@game_over
      round_success_message
      @sequence_length += 1
    end
  end

  def show_sequence
    add_random_color
    @seq.each { |color| puts color}
  end

  def require_sequence
    "Enter the color sequence"
    @seq.each do |color|
      input = gets.chomp
      
      if color != input
      @game_over = true
      end
      
   end
  end

  def add_random_color
    @seq << COLORS.sample
  end

  def round_success_message
    "Good Job!"
  end

  def game_over_message
    "Game Over!"
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = Array.new
  end
end