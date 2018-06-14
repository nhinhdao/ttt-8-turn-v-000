def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(num)
      num.to_i - 1
end

def move(board, index, value = "X")
      board[index] = value
end

def turn(board)
      begin
            puts "Please enter 1-9:"
            num = gets.strip
            index = input_to_index(num)
      end while index > 8
      if valid_move?(board, index)
            move(board, index, "X")
            display_board(board)
      else
            turn(board)
      end
end

def valid_move?(board, index)
      if position_taken?(board, index) == false && (index >= 0 && index <= 8)
            true
      else
            false
      end
end
# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
      if board[index] == "" || board[index] == " " || board[index] == nil
            false
      elsif board[index] == "X" || board[index] == "O"
            true
      end
end
