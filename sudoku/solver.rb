require './board'

class Solver

  def Solver.solve(board)
    empty_cell_idx = board.find_empty_cell
    return true if empty_cell_idx.nil?

    (1..9).each do |i|
      if board.valid_choice?(empty_cell_idx, i) then
        board.grid[empty_cell_idx] = i
        if solve(board)
          return true
        else
          board.grid[empty_cell_idx] = 0
        end
      end
    end

    return false
  end

end

puzzle_string = ARGF.readlines.join('')
board = Board.new(puzzle_string)
start_time = Time.now
if Solver.solve(board) then
  board.print
else
  puts "No solution exists"
end
end_time = Time.now
puts "It took " + (end_time - start_time).to_s + " seconds"
