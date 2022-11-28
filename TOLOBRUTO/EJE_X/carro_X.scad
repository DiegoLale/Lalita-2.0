
difference()
{
    union()
    {
        base1();
        taco_sup();
        taco_inf();
        taco_extrusor();
        taco_correa();
    }
    union()
    {
        huecos_guias();
        insertos();
        correa();
        entrada_correa();
    }
}

module base1()
{
    hull() // base
    {
        translate([-5,32.5+5,1])cylinder(r = 5, h = 4, $fn = 30);
        translate([5,32.5+5,1])cylinder(r = 5, h = 4, $fn = 30);
        translate([-5,-32.5,1])cylinder(r = 5, h = 4, $fn = 30);
        translate([5,-32.5,1])cylinder(r = 5, h = 4, $fn = 30);
        translate([-5,32.5+5,0])cylinder(r = 4, h = 4, $fn = 30);
        translate([5,32.5+5,0])cylinder(r = 4, h = 4, $fn = 30);
        translate([-5,-32.5,0])cylinder(r = 4, h = 4, $fn = 30);
        translate([5,-32.5,0])cylinder(r = 4, h = 4, $fn = 30);
    }
}
module taco_sup()
{
    translate([0,5,0])hull() // taco_superior
    {
        translate([-5,32.5,1])cylinder(r = 5, h = 7, $fn = 30);
        translate([5,32.5,1])cylinder(r = 5, h =7, $fn = 30);
        translate([-5,17.5,1])cylinder(r = 5, h = 7, $fn = 30);
        translate([5,17.5,1])cylinder(r = 5, h = 7, $fn = 30);
        
    }
}
module taco_inf() hull() // taco_inferior
{
    translate([-5,-32.5,1])cylinder(r = 5, h = 7, $fn = 30);
    translate([5,-32.5,1])cylinder(r = 5, h =7, $fn = 30);
    translate([-5,-12,1])cylinder(r = 5, h = 7, $fn = 30);
    translate([5,-12,1])cylinder(r = 5, h = 7, $fn = 30);
}
module huecos_guias()
{
    translate([-5,17.5+5,-1])cylinder(r = 1.75, h = 10, $fn = 30);
    translate([5,17.5+5,-1])cylinder(r = 1.75, h = 10, $fn = 30);
    translate([-5,32.5+5,-1])cylinder(r = 1.75, h = 10, $fn = 30);
    translate([5,32.5 +5,-1])cylinder(r = 1.75, h = 10, $fn = 30);
    translate([-5,-17.5,-1])cylinder(r = 1.75, h = 10, $fn = 30);
    translate([5,-17.5,-1])cylinder(r = 1.75, h = 10, $fn = 30);
    translate([-5,-32.5,-1])cylinder(r = 1.75, h = 10, $fn = 30);
    translate([5,-32.5,-1])cylinder(r = 1.75, h = 10, $fn = 30);
}
module taco_extrusor()
{
    hull()
    {
        translate([24,-19,1])cylinder(r = 5, h = 4, $fn = 30);
        translate([24,-19,0])cylinder(r = 4, h = 4, $fn = 30);
        translate([24,11,1])cylinder(r = 5, h = 4, $fn = 30);
        translate([24,11,0])cylinder(r = 4, h = 4, $fn = 30);
        translate([-24,-14,1])cylinder(r = 5, h = 4, $fn = 30);
        translate([-24,-14,0])cylinder(r = 4, h = 4, $fn = 30);      
        
        
        translate([15.5,16.5,1])cylinder(r = 5, h = 4, $fn = 30);
        translate([15.5,16.5,0])cylinder(r = 4, h = 4, $fn = 30);
        
        translate([15.5,-24.5,1])cylinder(r = 5, h = 4, $fn = 30);
        translate([15.5,-24.5,0])cylinder(r = 4, h = 4, $fn = 30);
        
        translate([-15.5,6.5,1])cylinder(r = 5, h = 4, $fn = 30);
        translate([-15.5,6.5,0])cylinder(r = 4, h = 4, $fn = 30);
        
        translate([-15.5,-24.5,1])cylinder(r = 5, h = 4, $fn = 30);
        translate([-15.5,-24.5,0])cylinder(r = 4, h = 4, $fn = 30);
        
    }
}
module inserto()
{
        translate([0,0,-1])cylinder(d = 3.5, h = 20, $fn = 30);
        translate([0,0,1])cylinder(d = 4.15, h = 20, $fn = 30);
}
module insertos()
{
    translate([-24,-14,0]) inserto();
    translate([24,-19,0]) inserto();
    translate([24,11,0]) inserto();
    
}

module correa()
{
translate([-40,-11.5,6])cube([80,0.9,20]); // cuerpo correa
for(i = [0: 2: 60])
{
    translate([i,0,0])diente();
}
}
module diente()
hull()
{
    translate([-30, -10.5, 9])cylinder(d = 1.1, h = 20, $fn = 30);
    translate([-30, -10.7, 9])cylinder(d = 1.1, h = 20, $fn = 30);
}
module taco_correa()
{
hull()
{
    translate([9.5,-14,0])cylinder(d = 1, h = 16, $fn = 15);
    translate([9.5,-6,0])cylinder(d = 1, h = 16, $fn = 15);
    translate([-20,-14,0])cylinder(d = 1, h = 16, $fn = 15);
    translate([-20,-6,0])cylinder(d = 1, h = 16, $fn = 15);
    }
}
module entrada_correa()
{color ("red")hull()
{
color ("red")translate([0,-11,15.5])rotate([0,90,0])cylinder(d = 1,h = 50, $fn = 20, center = true );
  color ("red")translate([0,-10.3,19])rotate([0,90,0])cylinder(d = 4.5,h = 50, $fn = 20, center = true );
}
}