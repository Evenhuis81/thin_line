class Grid {
    boolean active;
    int rows, cols;
    float colW, rowH; // width and height of each tile
    Grid(int cols_, int rows_) {
        cols = cols_;
        rows = rows_;
        rowH = height/rows;
        colW = rowH;
        on();
    }
    void show() {
        stroke(128);
        strokeWeight(1);
        for (int i = 0; i < cols + 1; i++) line(colW*i, 0, colW*i, height);
        for (int i = 0; i < rows + 1; i++) line(0, rowH*i, width , rowH*i);
    }
    void on() {active=true;}
    void off() {active=false;}
    int mousePointerX() {
        // get column number from mouseX
        int posX = (int) map(mouseX, 0, width, 0, cols);
        // check which side of the column is closer
        int side = 0; // 0 = left, 1 = right
        if (mouseX >= posX*colW + colW/2) side = 1;
        // set final position 
        return int(posX*colW + side*colW);
    }
    int mousePointerY() {
        // same thing for mouseY and row
        int posY = (int) map(mouseY, 0, height, 0, rows);
        int side = 0; // 0 = top, 1 = bottom
        if (mouseY >= posY * rowH + rowH/2) side = 1;
        return int(posY*rowH + side*rowH);
    }
}