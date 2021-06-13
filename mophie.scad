$fn=150;
use <phonecradle.scad>

module mophie() {
    cylinder(d2=90,d1=73.6,h=10);
    translate([35,0,5])rotate([0,90,0])scale([1.02,10/7.5+0.02,1.02])cylinder(d=7.5,h=20);
    translate([0,0,9.9])cylinder(d=90,h=5);
};


//difference() {
//    case();
//    translate([0,55,0])cube([200,200,50],center=true);
//    translate([0,-60,-11])cube([200,40,20],center=true);
//};

difference() {
    cradle(qi="mophie V8");
    translate([0,0,1.5])mophie();
//    translate([0,55,0])cube([200,200,50],center=true);
//    translate([0,-60,-11])cube([200,40,20],center=true);
};