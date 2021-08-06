class Editor {
    Grid grid;
    Road road;
    boolean active;
    int xLive, yLive, xStart, yStart;
    boolean drawing;
    Editor(Grid grid_, Road road_) {
        road = road_;
        grid = grid_;
        on();
    }
    void on() {active=true;}
    void off() {active=false;}
    void update() {
        xLive = grid.mousePointerX();
        yLive = grid.mousePointerY();
    }
    void show() {
        if (drawing) {
            stroke(255, 0, 0);
            strokeWeight(2);
            line(xStart, yStart, xLive, yLive);
            drawPointer(xStart, yStart, color(0,255,0), 6);
        }
        color c = color(255);
        for (int i = 0; i < road.map.size(); i++) {
            int[] temp = road.map.get(i);
            c = (i == 0) ? color(0,0,255) : c;
            drawPointer(temp[0], temp[1], c, 6);
            c = (i == road.map.size()-1 && active) ? color(0,255,255) : color(0,255,0);
            drawPointer(temp[2], temp[3], c, 6);
        }
        c = drawing ? color(255,0,0) : color(255);
        drawPointer(xLive, yLive, c, 6);
    }
    void roadStart() {
        drawing = true;
        xStart = xLive;
        yStart = yLive;
    }
    void roadStop() {
        drawing = false;
        if (xStart == xLive && yStart == yLive) {
            // showWarningText("Nothing added", 2); // msg, duration
            println("nothing added");
            return;
        }
        if (!road.connected(xStart, yStart)) {
            // showWarningText("Connect from the light blue dot please...", 3); // msg, duration
            println("NOT CONNECTED");
            return;
        }
        int[] line = { xStart, yStart, xLive, yLive };
        road.add(line);
        if (road.startIsEnd(xLive, yLive)) {
            grid.off();
            off();
            return;
        }
    }
    void drawPointer(int x_, int y_, color c_, int r_) {
        fill(c_);
        noStroke();
        circle(x_, y_, r_*2);
    }
}