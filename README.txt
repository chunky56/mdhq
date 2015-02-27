Sudoku Solver README

1. How does your algorithm work?

First, it finds the next empty cell in the grid (set to 0). If it does not find an empty cell, all cells must be set and the board is solved, so return true. If not, it then loops through the possible numbers 1-9 and checks if the current number would be a valid_choice for the cell. If so, it sets the number to the cell and recursively calls itself. If the recursive call returns false, then that recursive branch did not have a solution; set the cell to 0, and try another possible number. If all numbers have been tried, then there is no solution; return false.

2. Give and explain the big-O notation of the best, worst and expected run-time of your program.

The best case scenario is that the puzzle is already filled, so it would just look for an empty cell and not find one, O(n) where n is the number of squares in the puzzle. The worst case scenario is if there is no solution and the algorithm has to go through every open cell, trying every valid possibility for that cell. In this case, it would be O(m^n), or exponential complexity, where m is the numbers 1-9 and n is the number of open cells in the puzzle. The expected case scenario is similar to the worst case, but there is a solution and the algorithm will not need to try every possibility for numbers and cells. The complexity would be O(m^n), or exponential, but the m and n would be smaller, as not all would be chosen.

3. Why did you design the program the way you did?

The backtracking algorithm is a straightforward way to implement a sudoku solver. It is simple to write and to understand. I designed the solver to be separate from the board state and checking functions, as it seemed logical. I considered making other classes such as Cells, Regions, Strategies, but as I was implementing them, some of them seemed overengineered and others required more time. Running out of time was also a factor in this design.

4. What are some other decisions you could have made. How might they have been better? How might they have been worse?

I could have chosen a different way of choosing an empty cell, perhaps a cell with the minimum number of possible candidates. It probably would have improved the solving performance of the algorithm, but the design would be a bit more complex. I also could have implemented a different algorithm altogether, as the backtracking algorithm is a "brute force" method. It also would have improved the performance, but once again the design would be more complex.