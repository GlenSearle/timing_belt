$fs=0.1;
belt_length=200; // in mm
belt_thickness=5; // Distance from outside surface to inside
belt_width=5;



interface_surface=2; //Amount of flat area behind the belt.
difference(){
rotate_extrude() translate([(belt_length/3.1457)-(belt_thickness/2)-interface_surface,0,0]) square([belt_width+interface_surface,belt_thickness/2+2]);
 
#rotate_extrude() translate([belt_length/3.1457,0,0]) circle(belt_width/2);
rotate_extrude() translate([belt_length/3.1457,-belt_width/2,0]) square([belt_width/2+0.01,belt_width]);
}

//The tab that aligns the two parts.
rotate([180,0,0])
difference(){
rotate_extrude() translate([((belt_length/3.1457)-(belt_thickness/2)-interface_surface*2+0.01),-(belt_thickness/2+2),0]) square([interface_surface,belt_thickness+4]);

translate ([-0.1,-belt_length/3,-interface_surface-belt_thickness]) cube(belt_length);

}






