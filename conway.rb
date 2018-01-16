class ConwayGame
  def main
    width = get_width(board)
    height = get_height(board)
  end
  def alive_pieces(board, piece_x, piece_y)
    width = get_width(board)
    height = get_height(board)
    border_total = 0
    for i in (piece_x-1)..(piece_x+1) do
      for j (piece_y-1)..(piece_y+1) do
        if i < 0 && i > width && j < 0 && j > height
          if board[i][j] == 1
            border_total += 1
          end
        end
      end
    end
    return border_total
  end

  def piece_status(board, piece_x, piece_y)
    total_live = alive_pieces(board, piece_x, piece_y)
    if total_live < 2 || total_live > 3
      return 0
    else
      return 1
    end
  end

  def get_width(board)
    return board.length
  end
  
  def get_height(board)
    return board.height
  end
end
