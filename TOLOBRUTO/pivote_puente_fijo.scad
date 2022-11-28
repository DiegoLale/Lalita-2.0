res =70;

difference()
{
    
    //cuerpo principal
    color("CYAN")union()
    {
        intersection()
        {
        translate([-31,-38,0])cube([62,60,10]);
        translate([0,0,-1])cylinder(h = 12, d = 64, $fn = res);
        }
    hull()
    {
        color("BLUE")translate([-26,-33,0])cylinder(d = 10, h =3, $fn = res/2); //tornillo_barra
        color("BLUE")translate([26,-33,0])cylinder(d = 10, h =3, $fn = res/2); //tornillo_barra
        color("BLUE")translate([-26,17,0])cylinder(d = 10, h =3, $fn = res/2); //tornillo_barra
        color("BLUE")translate([26,17,0])cylinder(d = 10, h =3, $fn = res/2); //tornillo_barra 
    }
}
    union()
    {
        rotate([0,0,90])tornillos_seguro();
        
        translate([16,5,0])pelotilla();
        rotate([0,0,90])translate([16,5,0])pelotilla();
        
        rotate([0,0,90])translate([-25,-5,0])pelotilla();
        translate([-25,-5,0])pelotilla();
        
        color("RED")translate([0,0,-1])cylinder(d = 5.25, h = 30, $fn = res); //eje central
        
        color("BLUE")translate([-26,-33,-1])cylinder(d = 3.3, h =50, $fn = res/2); //tornillo_barra
        color("BLUE")translate([26,-33,-1])cylinder(d = 3.3, h =50, $fn = res/2); //tornillo_barra
        color("BLUE")translate([-26,17,-1])cylinder(d = 3.3, h =50, $fn = res/2); //tornillo_barra
        color("BLUE")translate([26,17,-1])cylinder(d = 3.3, h =50, $fn = res/2); //tornillo_barra
        
        rebaje(-26,-33);
        rebaje(26,-33);
        rebaje(-26,17);
        rebaje(26,17);
    }
}

module rebaje(x,y)
{
    translate([0,0,2])hull()
    {
        translate([x,y,0])cylinder(d=10, h = 15, $fn = res);
        translate([x*2,y,0])cylinder(d=30, h = 15, $fn = res);
        translate([x,y*2,0])cylinder(d=30, h = 15, $fn = res);
    }
}


module pelotilla()
{
    translate([0,0,10.2])sphere(d = 7.5, $fn= res);
    //color("RED")translate([0,0,3.5])cylinder(d = 10.25, h = 30, $fn = res);
    //translate([0,0,-1])cylinder(d = 7.5, h = 30, $fn = res);
    //color("RED")translate([0,0,15])cylinder(d = 11.25, h = 30, $fn = res);
}

module tornillos_seguro()
{
    desplazamiento = 20;
    color("YELLOW")translate([-5,20,6.2])cylinder(d = 4.25, h = 100, $fn = res/2);
    color("YELLOW")translate([-5,20,-1])cylinder(d = 6, h = 7, $fn = res/2);
    
    color("YELLOW")translate([-5,-20,6.2])cylinder(d = 4.25, h = 100, $fn = res/2);
    color("YELLOW")translate([-5,-20,-1])cylinder(d = 6, h = 7, $fn = res/2);
}
