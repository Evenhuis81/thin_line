class Vehicle {
    boolean active;
    float pulse, r;
    Vehicle() {
        pulse = 180;
    }
    void update() {}
    void show() {
        r = (cos(radians(pulse)) + 5) * 4;
        pulse += 7;
        stroke(255,0,0);
        fill(255,0,255);
        circle(width/2, height/2, r);
    }
    void on() {active=true;}
    void off() {active=false;}
}