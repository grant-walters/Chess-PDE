class Board {
    Square[][] squares;
    // Plane constructor
    Board() {
        for(int i=0;i<squares.length;i++) {
            for(int j=0;j<squares[0].length;j++) {
                squares[i][j] = new Square(i,j,this);
            }
        }
    }
    
}
