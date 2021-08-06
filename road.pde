class Road {
    ArrayList<int[]> map = new ArrayList<int[]>();
    void show() {
        for (int i = 0; i < map.size(); i++) {
            color c = color(0,255,0);
            stroke(c);
            strokeWeight(2);
            int[] temp = map.get(i);
            line(temp[0], temp[1], temp[2], temp[3]);
        }
    }
    void add(int[] line_) {
        map.add(line_);
    }
    boolean startIsEnd(int x_, int y_) {
        return x_ == beginX() && y_ == beginY();
    }
    int beginX() {
        if (map.size() == 0) return -1;
        return map.get(0)[0];
    }
    int beginY() {
        if (map.size() == 0) return -1;
        return map.get(0)[1];
    }
    boolean connected(int x_, int y_) {
        if (map.size() == 0) return true;
        int[] current = map.get(map.size()-1);
        println(x_, y_, current[2], current[3]);
        return current[2] == x_ && current[3] == y_;
    }
}