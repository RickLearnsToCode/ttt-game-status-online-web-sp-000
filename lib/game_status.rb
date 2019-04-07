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


def won?(board)
  won = false
  WIN_COMBINATIONS.each do |condition|
    [board[condition[0]],board[condition[1]], board[condition[2]]].all? {|i| i == "X" || i == "Y"} ? won = true : next
    won = true ? return condition : next
  end

end
