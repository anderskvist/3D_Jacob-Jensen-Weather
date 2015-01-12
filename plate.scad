// http://www.jacob-jensen-store.com/media/downloads/222/Indoor_Outdoor_Thermometer.pdf

$fn = 100;

module plate () {
	translate([-35,-3,-2]) cube([70,6,2]);

	translate([-28,0,0]) cylinder(2,1.5,1.5);
	translate([28,0,0]) cylinder(2,1.5,1.5);

	translate([-28,0,2]) cylinder(2,1.5,2.75);
	translate([28,0,2]) cylinder(2,1.5,2.75);
}

translate([0,11,0]) plate();
translate([-35,-8,-2]) cube([70,16,2]);
translate([0,-11,0]) plate();
translate([-35,-24,-2]) cube([70,10,2]);