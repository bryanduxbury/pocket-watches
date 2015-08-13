use <TIL308.scad>

difference() {
  hull()
  rotate_extrude($fn=90) {
    translate([28, 0, 0]) circle(r=4, $fn=32);
  }
  
  translate([0, 0, 3]) 
  cube(size=[100, 100, 6], center=true);
}

for (section=[-1,1], digit=[-1,1]) {
  translate([section * (0.5 + 0.45 * 25.4) + digit*(0.45 / 2 * 25.4), 0, 0])
  til308();
}
