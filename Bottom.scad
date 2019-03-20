$fn = 30;
module prism(l, w, h){
    polyhedron(
        points=[[0,0,0], [l,0,0], [l,w,0], [0,w,0], [0,w,h], [l,w,h]],
        faces=[[0,1,2,3],[5,4,3,2],[0,4,5,1],[0,3,4],[5,2,1]]
    );
}

difference() {
union() {
        translate([0, -29, 0]) {
            difference() {
            cylinder(r1 = 17, r2 = 0, h = 60);
            cylinder(r1 = 15, r2 = 0, h = 58);
            }
            translate([ 0, -45, 0]) {
                translate([-1.5, 0, 0]) {
                    cube([3, 45, 25], center = false);
                }
                translate([ -1.5, 0, 25]) {
                    prism( 3, 45, 10);
                }
            }
        }
        translate([29, 0, 0]) {
            rotate([ 0, 0, 90]) {
                difference() {
                    cylinder(r1 = 17, r2 = 0, h = 60);
                    cylinder(r1 = 15, r2 = 0, h = 58);
                }
                translate([ 0, -45, 0]) {
                    translate([-1.5, 0, 0]) {
                        cube([3, 45, 25], center = false);
                    }
                    translate([ -1.5, 0, 25]) {
                        prism( 3, 45, 10);
                    }
                }
            }
        }
        translate([-29, 0, 0]) {
            rotate([ 0, 0, -90]) {
                difference() {
                    cylinder(r1 = 17, r2 = 0, h = 60);
                    cylinder(r1 = 15, r2 = 0, h = 58);
                }
                translate([ 0, -45, 0]) {
                    translate([-1.5, 0, 0]) {
                        cube([3, 45, 25], center = false);
                    }
                    translate([ -1.5, 0, 25]) {
                        prism( 3, 45, 10);
                    }
                }
            }
        }
        translate([0, 29, 0]) {
            rotate([ 0, 0, 180]) {
                difference() {
                    cylinder(r1 = 17, r2 = 0, h = 60);
                    cylinder(r1 = 15, r2 = 0, h = 58);
                }
                translate([ 0, -45, 0]) {
                    translate([-1.5, 0, 0]) {
                        cube([3, 45, 25], center = false);
                    }
                    translate([ -1.5, 0, 25]) {
                        prism( 3, 45, 10);
                    }
                }
            }
        }
    cylinder(r = 30, h = 165);
    }
    cylinder(r = 28, h = 165);
}
    