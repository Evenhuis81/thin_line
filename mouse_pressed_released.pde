void mousePressed() {
    if (editor.active) {
        editor.roadStart();
    }
}

void mouseReleased() {
    if (editor.active) {
        editor.roadStop();
    }
}

void keyPressed() {
    if (key == 'c') {
        road.map.clear();
    }
}