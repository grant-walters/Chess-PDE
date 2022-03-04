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
    
    // Get value of the size of the board
    float size() {
        return new Float(size);
    }
    
    
}
