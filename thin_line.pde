Grid grid;
Editor editor;
Road road;
Vehicle vehicle;

void setup() {
    size(1280, 720);
    grid = new Grid(16,9);
    editor = new Editor();
    road = new Road();
    vehicle = new Vehicle();
}

void draw() {
    background(0);
    if (grid.active) grid.show();
    road.show();
    if (editor.active) editor.show();
}
