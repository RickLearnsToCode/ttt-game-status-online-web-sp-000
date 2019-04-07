# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]

WINNING_BOARD = [" "," "," ","X","X","X"," "," "," "]
LOSING_BOARD = [" "," "," "," "," "," "," "," "," "]


def won?(board)
  WIN_COMBINATIONS.each do |condition|
    puts [condition[0],condition[1],condition[2]]
    puts [board[condition[0]],board[condition[1]],board[condition[2]]]
    if [board[condition[0]],board[condition[1]], board[condition[2]]].all? {|i| i == "X" || i == "Y"}
      return [condition[0],condition[1],condition[2]]
    end
    end
    return nil
end

won?(WINNING_BOARD).type
