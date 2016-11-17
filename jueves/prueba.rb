# chess = [["Rook-B", "Knight-B", "Bishop-B", "Queen-B", "King-B", "Bishop-B", "Knight-B", "Rook-B"],
#          ["pawn-B", "pawn-B", "pawn-B", "pawn-B", "pawn-B", "pawn-B", "pawn-B", "pawn-B"],
#          [nil, nil, nil, nil, nil, nil, nil, nil],
#          [nil, nil, nil, nil, nil, nil, nil, nil],
#          [nil, nil, nil, nil, nil, nil, nil, nil],
#          [nil, nil, nil, nil, nil, nil, nil, nil],
#          ["pawn-W", "pawn-W", "pawn-W", "pawn-W", "pawn-W", "pawn-W", "pawn-W", "pawn-W"],
#          ["Rook-W", "Knight-W", "Bishop-W", "Queen-W", "King-W", "Bishop-W", "Knight-W", "Rook-W"]]

# p chess.transpose

def chess
  board = Array.new(8, [])
  empty_line = Array.new(8, '  ')
  pawn = Array.new(8, 'P')
  pieces = %w(R K B K Q B K R)
  white = '-W '
  black = '-B '
  line_0 = []
  line_1 = []
  line_6 = []
  line_7 = []


  board.each_with_index do |item, index|
    case index
      when 0
        pieces.each do |piece|
          line_0 << piece + black
          board[index] = line_0
        end
      when 1
        pawn.each do |piece|
          line_1 << piece + black
          board[index] = line_1
        end
      when (2..5)
        board[index] = empty_line
      when 6
        pawn.each do |piece|
          line_6 << piece + white
          board[index] = line_6
        end
      when 7
        pieces.each do |piece|
          line_7 << piece + white
          board[index] = line_7
        end
    end
  end
  puts board.map { |x| x.join }
end

chess