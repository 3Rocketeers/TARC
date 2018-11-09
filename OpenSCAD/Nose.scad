$fn = 100;

union() {
    translate([ 0, 0, 20]) {
        difference() {
            cylinder(r1 = 30, r2 = 0, h = 130);
            cylinder(r1 = 28, r2 = 0, h = 120);
        }
    }
    difference() {
        cylinder(r1 = 28, r2 = 30, h = 20);
        cylinder(r1 = 26, r2 = 28, h = 20);
    }
}