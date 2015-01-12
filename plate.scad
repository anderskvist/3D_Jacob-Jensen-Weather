// http://www.jacob-jensen-store.com/media/downloads/222/Indoor_Outdoor_Thermometer.pdf

$fn = 100;

module plate () {
	translate([-35,-3,-2]) cube([70,6,2]);

	translate([-28,0,0]) cylinder(2,1.5,1.5);
	translate([28,0,0]) cylinder(2,1.5,1.5);

	translate([-28,0,2]) cylinder(1,1.5,2.5);
	translate([28,0,2]) cylinder(1,1.5,2.5);

	translate([-28,0,3]) cylinder(1,2.5,2.5);
	translate([28,0,3]) cylinder(1,2.5,2.5);
}

module mounthole () {
	translate([0,2,-3]) cylinder(4,2,2);
	translate([0,2,-1]) cylinder(2,4,4);

	translate([-2,-2,-3]) cube([4,4,4]);
	translate([-4,-2,-1]) cube([8,4,2]);

	translate([0,-2,-3]) cylinder(4,2,2);
	translate([0,-2,-1]) cylinder(2,4,4);

}

difference () {
	union () {
		translate([0,21,0]) plate();
		translate([-35,-18,-2]) cube([70,42-6,2]);
		translate([0,-21,0]) plate();
		translate([-35,-34,-2]) cube([70,10,2]);
	}
	translate([31,0,0]) rotate([0,45,0]) translate([0,-35,0]) cube([5,60,5]);
	translate([-31,0,0]) rotate([0,45,180]) translate([0,-25,0]) cube([5,60,5]);

	translate([-20,-5,0]) mounthole();
	translate([20,-5,0]) rotate(90,0,0) mounthole();
}
