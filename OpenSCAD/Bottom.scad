$fn = 30;
module prism(l, w, h){
    polyhedron(
        points=[[0,0,0], [l,0,0], [l,w,0], [0,w,0], [0,w,h], [l,w,h]],
        faces=[[0,1,2,3],[5,4,3,2],[0,4,5,1],[0,3,4],[5,2,1]]
    );
}

    
union() {
    %cylinder(r1 = 17, r2 = 0, h = 60);
    translate([ 0, -45, 0]) {
        translate([-1.5, 0, 0]) {
            %cube([3, 45, 25], center = false);
        }
        translate([ -1.5, 0, 25]) {
            prism( 3, 45, 10);
        }
    }
}

    