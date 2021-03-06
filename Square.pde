class Square {
    Board board;
    // Rank =  row on board, file = column on board.
    // On a standard board, the rank starts at 1 at the light side, and increases up to 8 on the dark side.
    // The file starts at 'A' on the left of the board from lights perspective, and goes to h on the right side.
    // For this project, they are instead represented as indexes for a 0-indexed 2 dimensional array, with 0,0 being a1.
    int rank, file;
    // Color of tile
    color col;
    Piece piece;
    
    // Standard constructor for a square
    // Inputs: rank, file, and the board object this square belongs to
    Square(int rank, int file, Board board) {
        this.rank = rank;
        this.file = file;
        this.board = board;
        // Determine if its a light or dark square,
        // All squares where the sum of the rank and file is even are dark.
        if ((rank+file) % 2 == 0) {
            col = color(36, 63, 66);
        } else {
            col = color(109, 167, 173);
        }
    }
    
    Piece setPiece(int pieceInfo) {
        piece = new Piece(this,pieceInfo);
        return piece;
    }
    
    void setPiece(Piece piece) {
        piece.setSquare(this);
        this.piece = piece;
    }
    
    // Map the rank and file to the proper coordinates for processing
    float getX() {
        return map(file,0,7,0,board.size()-size());
    }
    float getY() {
        return map(rank,0,7,board.size()-size(),0);
    }
    
    float size() {
        return board.size()/8;
    }
    
    void render() {
        float x = getX();
        float y = getY();
        
        //Styling
        noStroke();
        fill(col);
        
        //Render
        square(x,y,size());
        // Render piece if it exists
        if(piece != null) {
            piece.render();
        }
    }
        
    
}
