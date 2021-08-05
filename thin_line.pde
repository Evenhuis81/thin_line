Program program;

void setup() {
    size(1280, 720);
    program = new Program();
}

void draw() {
    program.run();
}


Grid grid;
Editor editor;
Road road;
Vehicle vehicle;
class Program {
    Program() {
        grid = new Grid(16,9);
        editor = new Editor();
        road = new Road();
        vehicle = new Vehicle();
    }
    void run() {
        background(0);
        if (grid.active) grid.show();
        if (editor.active) editor.update();
        road.show();
        if (editor.active) editor.show();
    }
}