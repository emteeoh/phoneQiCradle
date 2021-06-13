module phoneincase(h=1,l=144, w=73, ol=0, ow=0) {
    d=20;
    positions = [ [d/2,d/2,0],
                    [(w+ow)-(d/2),d/2,0],
                    [d/2,(l+ol)-(d/2),0],
                    [(w+ow)-(d/2),(l+ol)-(d/2),0]];
    translate([-(w+ow)/2, -(l+ol)/2, 0])hull() {
        for (i=[0:3]) {
            translate(positions[i])cylinder(d=d, h=h);
            echo(i, positions[i]);
        };
    }
}


module cradle(wt=1.5, cl=1, l=144, w=73, qi="    none") {
    //wt: wall thickness
    //cl: clearance
    difference() {
        phoneincase(h=22, l=l, w=w, ol=2*wt+cl, ow=2*wt+cl);
        translate([0,0,13])phoneincase(h=10, l=l, w=w, ol=cl, ow=cl);
        hull() {
            translate([-50,-100/2,23])rotate([0,90,0])cylinder(d=20,h=100);
            translate([-50,100/2,23])rotate([0,90,0])cylinder(d=20,h=100);
        };
        translate([-27,60,11.1])linear_extrude(2)text("cradle V2");
        for (i=[0:6] ) {
            translate([-30+10*i,-55,-15])cube([2,50,40]);
            translate([-30+10*i,5,-15])cube([2,50,40]);
        };
        translate([-30,-65,11.1])linear_extrude(2)text(qi);
    };
};

cradle(qi=" foobar v1");

