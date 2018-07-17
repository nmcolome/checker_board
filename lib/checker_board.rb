class CheckerBoard

  def build(size)
    board = Array.new(size, "X") { Array.new(size, "X") }
    board.each_index do |i|
      if i.odd?
        board[i].each_index do |j|
          if j.even?
            board[i][j] = " "
          else
            board[i][j]
          end
        end
      else
        board[i].each_index do |j|
          if j.odd?
            board[i][j] = " "
          else
            board[i][j]
          end
        end
      end
    end
    board.each { |row| row << "\n" }
    board.join("").strip
  end

end