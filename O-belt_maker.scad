/*
This script gernerates a cast for making silicone timing belts.
Set the veriables below to the length of your belt and the width
*/

$fs=0.1;
belt_length=500; // in mm
belt_thickness=5; // Distance from outside surface to inside, it's diameter in mm.
belt_width=5;



interface_surface=2; //Amount of flat area behind the belt.
difference(){
rotate([180,0,0]) rotate_extrude($fn=360) translate([(belt_length/3.1457)-(belt_thickness/2)-interface_surface,0,0]) square([belt_width+(interface_surface*2),belt_thickness/2+2]);
 
#rotate_extrude(,$fn=360) translate([belt_length/3.1457,0,0]) circle(belt_width/2);
}

//The tab that aligns the two parts.

difference(){
rotate_extrude($fn=360) translate([((belt_length/3.1457)-(belt_thickness/2)-interface_surface*2+0.01),-(belt_thickness/2+2),0]) square([interface_surface,belt_thickness+4]);

translate ([-0.1,-belt_length/3,-interface_surface-belt_thickness]) cube(belt_length);

}






