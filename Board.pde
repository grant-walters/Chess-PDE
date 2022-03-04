class Board {
    Square[][] squares = new Square[8][8];
    float size;
    // Plane constructor
    Board() {
        // Set the boards size to fit in the window at any size
        size = min(height,width);
        // Board setup
        // Iterate through the 2d array squares and fill it with Square objects
        for(int i=0;i<squares.length;i++) {
            for(int j=0;j<squares[0].length;j++) {
                squares[i][j] = new Square(i,j,this);
            }
        }
    }
    
    // Render the board to the screen
    void render() {
        //Rendering the board is just rendering all the squares
        for(int i=0;i<squares.length;i++) {
            for(int j=0;j<squares[0].length;j++) {
                squares[i][j].render();
            }
        }
    }
    //Get a square from common rank and file notation (ex: a1)
    Square getSquare(char file, int rank) { 
        int x = rank-1;
        int y = int(file)-97;
        return squares[x][y];
    }
    
    // Get value of the size of the board
    float size() {
        return new Float(size);
    }
    
    void loadFromFEN(String fen) {
        int row=7;
        int column=0;
        for(int i=0;i<fen.length();i++) {
            int piece = 0;
            char c = fen.charAt(i);
            
            if(c=='/') {
                row--;
                column = 0;
                continue;
            }
            if(c==' ') {
                break;
            }
            
            if(c>48 && c<=57) {
                column += (c-48);
                continue;
            } else if(c>=65 && c<=90) {
                piece = Piece.WHITE;
            } else {
                piece = Piece.BLACK;
            }
            
            if(c=='P' || c=='p') {
                piece = piece | Piece.PAWN;
                squares[row][column].setPiece(piece);
                column++;
            } else if(c=='B' || c=='b') {
                piece = piece | Piece.BISHOP;
                squares[row][column].setPiece(piece);
                column++;
            } else if(c=='N' || c=='n') {
                piece = piece | Piece.KNIGHT;
                squares[row][column].setPiece(piece);
                column++;
            } else if(c=='R' || c=='r') {
                piece = piece | Piece.ROOK;
                squares[row][column].setPiece(piece);
                column++;
            } else if(c=='Q' || c=='q') {
                piece = piece | Piece.QUEEN;
                squares[row][column].setPiece(piece);
                column++;
            } else if(c=='K' || c=='k') {
                piece = piece | Piece.KING;
                squares[row][column].setPiece(piece);
                column++;
            }
        }
    }
    
}
