class Board
  attr_accessor :grid

  def initialize(input)
    @grid = input.gsub("\n",',').gsub('-','0').split(',').map(&:to_i).to_a
  end

  def print
    @grid.each_slice(9){|row| puts row.join(',')}
  end

  def find_empty_cell
    @grid.find_index(0)
  end

  def valid_choice?(idx, num)
    return !already_in_row?(idx, num) &&
           !already_in_col?(idx, num) &&
           !already_in_box?(idx, num)
  end

  private

    def already_in_row?(idx, num)
      row_begin = idx - (idx % 9)
      @grid.slice(row_begin,9).include?(num)
    end

    def already_in_col?(idx, num)
      col_begin = idx % 9
      @grid.select.with_index{|_,i| i % 9 == col_begin}.include?(num)
    end

    def already_in_box?(idx, num)
      @grid.select.with_index{|_,i| index_to_box(i) == index_to_box(idx)}.include?(num)
    end

    def index_to_box(i)
      row = i / 9
      col = i % 9
      return (col / 3) + (3 * (row / 3))
    end

end