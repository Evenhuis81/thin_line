class Editor {
    boolean active;
    int xLive, yLive, xStart, yStart;
    boolean drawing;
    Editor() {on();}
    void on() {active=true;}
    void off() {active=false;}
    void show() {
        xLive = grid.mousePointerX();
        yLive = grid.mousePointerY();
        if (drawing) showLine();
        color c = drawing ? color(255,0,0) : color(255);
        drawPointer(xLive, yLive, c, 6);
    }
    void roadStart() {
        drawing = true;
        xStart = xLive;
        yStart = yLive;
    }
    void roadStop() {
        drawing = false;
        if (xStart == xLive && yStart == yLive) return;
        int[] line = { xStart, yStart, xLive, yLive };
        road.add(line);
        if (road.startIsEnd(xLive, yLive)) {
            grid.off();
            editor.off();
            return;
        }
    }
    void showLine() {
            stroke(255, 0, 0);
            strokeWeight(2);
            line(xStart, yStart, xLive, yLive);
            drawPointer(xStart, yStart, color(0,255,0), 6);
    }
    void drawPointer(int x_, int y_, color c_, int r_) {
        fill(c_);
        noStroke();
        circle(x_, y_, r_*2);
    }
}