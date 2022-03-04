class Piece {
    final static int PAWN = 1;
    final static int BISHOP = 2;
    final static int KNIGHT = 3;
    final static int ROOK = 4;
    final static int QUEEN = 5;
    final static int KING = 6;
    
    final static int WHITE = 8;
    final static int BLACK = 16;
    
    Square square;
    int pieceInfo;
    PImage pic;
    
    String[] imageNames = {"pawn","bishop","knight","rook","queen","king"};
    
    Piece(Square square,int info) {
        this.square = square;
        pieceInfo = info;
        
        String imgstring = (isWhite()) ? "white_" : "black_";
        int imgIndex = getPiece()-1;
        pic = loadImage(imgstring+imageNames[imgIndex]+".png");
    }
    Piece(int info) {
        pieceInfo = info;
        
        String imgstring = (isWhite()) ? "white_" : "black_";
        int imgIndex = getPiece()-1;
        pic = loadImage(imgstring+imageNames[imgIndex]);
    }
    
    void setSquare(Square square) {
        this.square = square;
    }
    
    void render() {
        push();
        translate(square.getX(),square.getY());
        image(pic,0,0,square.size(),square.size());
        pop();
    }
    
    int getPiece() {
        return pieceInfo & 7;
    }
    
    boolean isWhite() {
        return (pieceInfo & WHITE) == WHITE;
    }
    boolean isBlack() {
        return (pieceInfo & WHITE) == WHITE;
    }
    
    
    
}
