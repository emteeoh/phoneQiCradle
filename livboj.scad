$fn=150;
use <phonecradle.scad>

module livboj() {
    cylinder(d=92,h=12);
};


difference() {
    cradle(qi=" Livboj V5");
    translate([0,0,1.5])livboj();
};
