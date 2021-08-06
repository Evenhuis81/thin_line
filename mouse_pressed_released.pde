void mousePressed() {
    if (program.editor.active) {
        program.editor.roadStart();
    }
}

void mouseReleased() {
    if (program.editor.active) {
        program.editor.roadStop();
    }
}

void keyPressed() {
    if (key == 'c') {
        program.road.map.clear();
    }
}