class Program {
    Grid grid;
    Editor editor;
    Road road;
    Vehicle vehicle;
    Program() {
        grid = new Grid(16,9);
        road = new Road();
        editor = new Editor(grid, road);
        vehicle = new Vehicle();
    }
    void run() {
        background(0);
        if (grid.active) grid.show();
        if (editor.active) editor.update();
        road.show();
        if (editor.active) editor.show();
        vehicle.show();
    }
}