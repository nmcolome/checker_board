class CheckerBoard

  def build(size)
    board = create(size)
    add_white_spaces(board)
    board.each { |row| row << "\n" }
    board.join("").strip
  end
  
  def create(size)
    Array.new(size, "X") { Array.new(size, "X") }
  end
  
  def add_white_spaces(board)
    board.each_index do |i|
      if i.odd?
        board[i].each_index { |j| board[i][j] = " " if j.even? }
      else
        board[i].each_index { |j| board[i][j] = " " if j.odd? }
      end
    end
  end

end

print "Enter the size of the board (>0): > "
size = gets.chomp.to_i
print CheckerBoard.new.build(size)