# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [[0,1,2],
                    [3,4,5], 
                    [6,7,8],
                    [0,3,6],
                    [1,4,7], 
                    [2,5,8],
                    [0,4,8],
                    [2,4,6]]
  
  #[1,2,100].any?{|i| i > 99}
  
def won?(board)
  WIN_COMBINATIONS.each do |winner_array|
    
    win_index_1 = winner_array[0]
    win_index_2 = winner_array[1]
    win_index_3 = winner_array[2]
    
    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]
    
    if position_1 === "X" && position_2 == "X" && position_3 == "X"
      return winner_array
      
      elsif position_1 === "O" && position_2 == "O" && position_3 == "O"
        return winner_array
      
<<<<<<< HEAD
    
    end
  end
  false
=======
    else
      false
    end
  end
>>>>>>> 1c616fe55cf7596d24dbf7a28b4c45231cde624a
end

def full?(board)
  board.all?{|i| i == "X" || i == "O"}
end


def draw?(board)
  full?(board) && !won?(board)
end



def over?(board)
<<<<<<< HEAD
  won?(board) || full?(board)
=======
 if won?(board) || full?(board)
else
  false
>>>>>>> 1c616fe55cf7596d24dbf7a28b4c45231cde624a
end

def winner(board)
  if winner_array = won?(board)
    board[winner_array.first]
  end
end