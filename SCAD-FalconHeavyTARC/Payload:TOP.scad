module cone_haack(C = 0, R = 55, L = 88, s = 36){

echo(str("SEARS-HAACK BODY NOSE CONE"));
echo(str("C = ", C)); 
echo(str("R = ", R)); 
echo(str("L = ", L)); 
echo(str("s = ", s)); 

TORAD = PI/180;
TODEG = 180/PI;

inc = 1/s;

rotate_extrude(convexity = 10, $fn = s)
for (i = [1 : s]){
    x_last = L * (i - 1) * inc;
    x = L * i * inc;

    theta_last = TORAD * acos((1 - (2 * x_last/L)));
    y_last = (R/sqrt(PI)) * sqrt(theta_last - (sin(TODEG * (2*theta_last))/2) + C * pow(sin(TODEG * theta_last), 3));

    theta = TORAD * acos(1 - (2 * x/L));
    y = (R/sqrt(PI)) * sqrt(theta - (sin(TODEG * (2 * theta)) / 2) + C * pow(sin(TODEG * theta), 3));

    rotate([0, 0, -90]) polygon(points = [[x_last - L, 0], [x - L, 0], [x - L, y], [x_last - L, y_last]], convexity = 10);
}
}
union(){
    difference() {
        translate([0, 0, 107.8]) cone_haack (C = 0, R = 55, L = 88, s = 100);
        translate([0, 0, 107.8]) cone_haack(C = 0, R = 53.8, L = 86.8, s = 100);
    }
    difference(){
        translate([0, 0, 69.3]) cylinder($fa = 3.6, h = 77, r = 55, center = true);
        translate([0, 0, 69.3]) cylinder($fa = 3.6, h = 77, r = 53.8, center = true);
    }
    difference(){
        translate([0, 0, 30.8]) rotate([0, 180, 0]) cone_haack (C = 0, R = 55, L = 88, s = 100);
        translate([0, 0, 32]) rotate([0, 180, 0]) cone_haack (C = 0, R = 53.8, L = 86.8, s = 100);
        translate([0, 0, -38.5]) cylinder($fa = 3.6, h = 77, r = 55, center = true);
    }
}