class Road {
    ArrayList<int[]> map = new ArrayList<int[]>();
    void show() {
        for (int i = 0; i < map.size(); i++) {
            color c = color(0,255,0);
            stroke(c);
            strokeWeight(2);
            int[] temp = map.get(i);                
            line(temp[0], temp[1], temp[2], temp[3]);
            if (editor.active) {
                c = (i == 0) ? color(0,0,255) : c;
                editor.drawPointer(temp[0], temp[1], c, 6);
                if (!editor.drawing) {
                    c = (i == map.size()-1 && editor.active) ? color(0,255,255) : color(0,255,0);
                    editor.drawPointer(temp[2], temp[3], c, 6);
                }
            }
        }
    }
    void add(int[] line_) {
        map.add(line_);
    }
    boolean startIsEnd(int x_, int y_) {
        return x_ == beginX() && y_ == beginY();
    }
    int beginX() {
        if (map.size() == 0) return -11111;
        return map.get(0)[0];
    }
    int beginY() {
        if (map.size() == 0) return -11111;
        return map.get(0)[1];
    }
}