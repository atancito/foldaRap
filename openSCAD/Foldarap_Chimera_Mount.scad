//
//
//

difference() {
  difference() {
    //pieza base
    union() {
      cube([30, 30, 6], center=true);
      translate([0, 0, 6]) {
        cube([30, 12, 6], center=true);
      }
    }
    //taladro1 de sujecion de la pieza
    translate([10, 0, 6]) {
      rotate([90, 0, 0]){
        cylinder(d=3, h=20, $fn=20, center=true);
      }
    }
    //taladro2 de sujecion de la pieza
    translate([-10, 0, 6]) {
      rotate([90, 0, 0]){
        cylinder(d=3, h=20, center=true, $fn=20);
      }
    }
  }

  //
  //taladros de sujecion al Hotend
  //
  //taladro1 de sujecion al Hotend
  translate([0, -5, 0]){
    cylinder(d=3, h=20, center=true, $fn=20);
    translate([0, 0, -0.5]){
      cylinder(d=6, h=10, center=false, $fn=20);
    }
  }
  //taladro2 de sujecion al Hotend
  translate([4.5, 5, 0]){
    cylinder(d=3, h=20, center=true, $fn=20);
    translate([0, 0, -0.5]){
      cylinder(d=6, h=10, center=false, $fn=20);
    }
  }
  //taladro3 de sujecion al Hotend
  translate([-4.5, 5, 0]){
    cylinder(d=3, h=20, center=true, $fn=20);
    translate([0, 0, -0.5]){
      cylinder(d=6, h=10, center=false, $fn=20);
    }
  }
}

//
//Taladros de la cabeza de los tornillos
//
