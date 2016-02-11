//
//
//

$fn=100;
drill=3;
drillH=6;


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
        cylinder(d=drill, h=20, center=true, $fn=$fn);
      }
    }
    //taladro2 de sujecion de la pieza
    translate([-10, 0, 6]) {
      rotate([90, 0, 0]){
        cylinder(d=drill, h=20, center=true, $fn=$fn);
      }
    }
  }

  //
  //taladros de sujecion al Hotend
  //
  //taladro1 de sujecion al Hotend
  translate([0, -5, 0]){
    cylinder(d=drill, h=20, center=true, $fn=$fn);
    translate([0, 0, -0.5]){
      cylinder(d=drillH, h=10, center=false, $fn=$fn);
    }
  }
  //taladro2 de sujecion al Hotend
  translate([4.5, 5, 0]){
    cylinder(d=drill, h=20, center=true, $fn=$fn);
    translate([0, 0, -0.5]){
      cylinder(d=drillH, h=10, center=false, $fn=$fn);
    }
  }
  //taladro3 de sujecion al Hotend
  translate([-4.5, 5, 0]){
    cylinder(d=drill, h=20, center=true, $fn=$fn);
    translate([0, 0, -0.5]){
      cylinder(d=drillH, h=10, center=false, $fn=$fn);
    }
  }
}

//
//Taladros de la cabeza de los tornillos
//
