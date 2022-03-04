Board board;

// Setup function runs once at the start
void setup() {
    // Set window size
    size(900,900);
    // Initialize board object
    board = new Board();
}

// Draw function runs every frame
void draw() {
    // clear background
    background(255);
    board.render();
}
