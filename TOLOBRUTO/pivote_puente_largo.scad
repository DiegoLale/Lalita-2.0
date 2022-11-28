res =70;

difference()
{
    
    //cuerpo principal
    color("CYAN")hull()
    {
        cylinder(r = 38, h = 17, $fn = res*2); //redondez cuerpo principal
        translate([0,-38,0])cube([42,120,17]);
        translate([-5,77,0])cylinder(d = 10, h =17, $fn = res);
    }
    
    union()
    {
        tornillos_seguro();
        
        translate([16,5,0])pelotilla();
        translate([-25,-5,0])pelotilla();
        color("RED")translate([0,0,-1])cylinder(d = 5.25, h = 30, $fn = res); //eje central
        
        color("BLUE")translate([5,-33,-1])cylinder(d = 3, h =50, $fn = res/2); //tornillo_barra
        color("BLUE")translate([35,-33,-1])cylinder(d = 3, h =50, $fn = res/2); //tornillo_barra
        color("BLUE")translate([5,77,-1])cylinder(d = 3, h =50, $fn = res/2); //tornillo_barra
        color("BLUE")translate([35,77,-1])cylinder(d = 3, h =50, $fn = res/2); //tornillo_barra
        
        color("GREEN")translate([50,-33,12])cube([100,10.5,20], center = true); // barra_abajo (delantera)
        color("GREEN")translate([50,77,12])cube([100,10.5,20], center = true);  // barra arriba (trasera) la desplazada desde v1
    }
}




module pelotilla()
{
    color("RED")translate([0,0,3.5])cylinder(d = 10.25, h = 30, $fn = res);
    translate([0,0,-1])cylinder(d = 7.5, h = 30, $fn = res);
    color("RED")translate([0,0,15])cylinder(d = 11.25, h = 30, $fn = res);
}

module tornillos_seguro()
{
    desplazamiento = 20;
    color("YELLOW")translate([-5,20,-1])cylinder(d = 4.25, h = 100, $fn = res/2);
    color("YELLOW")translate([-5,-20,-1])cylinder(d = 4.25, h = 100, $fn = res/2);
}