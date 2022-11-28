res = 50; // resolucion
difference()
{
    union()//cuerpo principal
    {
        hull()
        {
        translate([-3,-17,0])cylinder(d = 10, h = 20, $fn = res);
        translate([-20,-17,0])cylinder(d = 10, h = 20, $fn = res);
        }
        
        translate([-15.5,15.5,0])cylinder(d = 20, h = 20, $fn = res);
        hull()
        {
        translate([10,45,0])cylinder(d = 5, h = 20, $fn = res);
        translate([15,45,0])cylinder(d = 5, h = 20, $fn = res);
        translate([10,25,0])cylinder(d = 5, h = 20, $fn = res);
        translate([15,25,0])cylinder(d = 5, h = 20, $fn = res);
        }
            hull()
        {
            
            translate([15.5,25.5,0])cylinder(d = 10, h = 20, $fn = res);
            translate([15.5,-15.5,0])cylinder(d = 10, h = 20, $fn = res);
            translate([-15.5,15.5,0])cylinder(d = 10, h = 20, $fn = res);
            translate([-15.5,-15.5,0])cylinder(d = 10, h = 20, $fn = res);
            
            translate([-24,-5,0])cylinder(d = 10, h = 20, $fn = res);
            translate([24,-10,0])cylinder(d = 10, h = 20, $fn = res);
            translate([24,20,0])cylinder(d = 10, h = 20, $fn = res);
        }
    }
    union() // vaciados
    {
        cabeza_extrusor();
        // hueco ptfe
        translate([-11.5,0,15])rotate([90,0,0])cylinder(d = 4.3, h = 100,center = true, $fn = res);
        hull()// registro superior ptfe
        {
            translate([-11.5,0,15])rotate([90,0,0])cylinder(d = 3.9, h = 100,center = true, $fn = res);
            translate([-11.5,0,20])rotate([90,0,0])cylinder(d = 3.9, h = 100,center = true, $fn = res);
        }
        //tornillos motor
        translate([15.5,15.5,-5])cylinder(d = 3.3, h = 60, $fn = res);
        translate([15.5,-15.5,-5])cylinder(d = 3.3, h = 60, $fn = res);
        translate([-15.5,15.5,-5])cylinder(d = 8, h = 60, $fn = res);
        translate([-15.5,-15.5,-5])cylinder(d = 3.3, h = 60, $fn = res);
        //cabezas tornillos motor
        translate([15.5,15.5,17])cylinder(r = 3.3, h = 60, $fn = res);
        translate([15.5,-15.5,17])cylinder(r = 3.3, h = 60, $fn = res);
        translate([-15.5,-15.5,6])cylinder(r = 3.3, h = 60, $fn = res);
        // tornillos cierre con el carro
        translate([-24,-5,-5])cylinder(d = 3.3, h = 60, $fn = res);
        translate([24,-10,-5])cylinder(d = 3.3, h = 60, $fn = res);
        translate([24,20,-5])cylinder(d = 3.3, h = 60, $fn = res);
        //eje cetral menos guía ptfe
        difference()
        {
            translate([0,0,-5])cylinder(d = 24, h = 60, $fn = res*3);
            hull()
            {
                translate([-15,0,5])rotate([90,0,0])cylinder(d = 4, h = 30, $fn = res);
                translate([-11.5,0,15])rotate([90,0,0])cylinder(d = 7, h = 30, $fn = res);
                translate([-18,-15,15])cube([10,15,5]);
            }
        }
        difference()
        {
        translate([-15.5, 15.5, 5])cylinder(d = 38, h = 60, $fn = res * 2);
            hull()
            {
                translate([-15,-15,15])cube([8,13.5,5]);
                translate([-11.5,-6,15])rotate([-90,0,0])cylinder(d1 = 13, d2 = 6, h = 4.5, $fn = res);
            }
            }
            translate([-15.5, 15.5, 2])cylinder(d = 9.3, h = 60, $fn = res);
        //palanca
        hull()
        {
            translate([0, 0, 10])cylinder(d = 12, h = 40, $fn = res);
            translate([0, 50, 10])cylinder(d = 20, h = 40, $fn = res);
        }
        //muelle
        translate([0, 23, 15])rotate([0,90,0])cylinder(d = 6.5, h = 10);
        //tornillos_laterales_cableado
        translate([15,9,16])rotate([0,90,0])cylinder(d=3,h=15, $fn=res);
        translate([15,-6,16])rotate([0,90,0])cylinder(d=3,h=15, $fn=res);
        translate([15,9,4])rotate([0,90,0])cylinder(d=3,h=15, $fn=res);
        translate([15,-6,4])rotate([0,90,0])cylinder(d=3,h=15, $fn=res);


    }
}



module cabeza_extrusor()
{
    union()
    {
        hull()
    {
    translate([-11.5,-16,14.7])rotate([90,0,0])cylinder(d = 8, h = 21,center = true, $fn = res);
    translate([-11.5,-16,25])rotate([90,0,0])cylinder(d = 8, h = 21,center = true, $fn = res);
    }
difference()
{
    hull()
    {
    translate([-11.5,-16,14.7])rotate([90,0,0])cylinder(d = 16.3, h = 16,center = true, $fn = res);
    translate([-11.5,-16,25])rotate([90,0,0])cylinder(d = 16.3, h = 16,center = true, $fn = res);
    }
        union()
        {
        difference()
        {
            hull()
            {
                translate([-11.5,-15.5,25])rotate([90,0,0])cylinder(d = 20, h = 5.8,center = true, $fn = res);
                translate([-11.5,-15.5,14.7])rotate([90,0,0])cylinder(d = 20, h = 5.8,center = true, $fn = res);
            }
            hull()
            {
                translate([-11.5,-15,25])rotate([90,0,0])cylinder(d = 11.2, h = 10,center = true, $fn = res);
                translate([-11.5,-15,14.7])rotate([90,0,0])cylinder(d = 11.2, h = 10,center = true, $fn = res);
            }
                
        }
    }
}

}
}
