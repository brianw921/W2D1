require_relative "Piece"
require "byebug"

class NoPieceError < StandardError
end
class CannotMoveError < StandardError
end

class Board
  attr_reader :rows 
  def initialize
    # debugger
    @rows = Array.new(8) {Array.new(8)}
    # @sentinel = NullPiece.new 
    self.populate
  end
  
  def populate # we currently didnot assign what piece we only set up the piece and the board
    # debugger
    (0...8).each do |i|
      @rows[0][i] = "p" #  Piece.new
      @rows[1][i] = "p" #Piece.new
      @rows[6][i] = "p" #Piece.new
      @rows[7][i] = "p" #Piece.new
    end
    (2..5).each do |i|
      (0..7).each do |j|
        @rows[i][j] = "n" # nil
      end
    end
  end

  def [](pos)
    row, col = pos
    @rows[row][col] 
  end
  
  def []=(pos,val)
    row, col = pos
    @rows[row][col] = val
  end
  
  def move_piece(color,start_pos,end_pos)
     if @rows[start_pos] == nil
      raise NoPieceError
     end
     x , y = end_pos
     if !(x >= 0 && x < 8 && y < 8 && y >=0)
      raise CannotMoveError
     end
      
  end

  def valid_pos?(pos)
  end

  def add_piece(piece,pos)
  end

  def checkmate?(color) #if king color have no possible moves. Checkmate to that color, declare other color winner
  end
  def in_check?(color)
  end

  def find_king(color)
  end

  def pieces
  end

  def dup
  end

  def move_piece!(color,start_pos,end_pos)
  end

  private
  attr_accessor :sentinel
end