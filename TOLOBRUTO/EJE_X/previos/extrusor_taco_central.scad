res = 50; // resolucion
mirror([1,0,0])
difference()
{
    union()//cuerpo principal
    {
        translate([-15.5,15.5,0])cylinder(d = 20, h = 20, $fn = res);
        hull()
        {

        }
            hull()
        {
            translate([15.5,25.5,0])cylinder(d = 10, h = 5, $fn = res);
            translate([15.5,-15.5,0])cylinder(d = 10, h = 5, $fn = res);
            translate([-15.5,15.5,0])cylinder(d = 10, h = 5, $fn = res);
            translate([-15.5,-15.5,0])cylinder(d = 10, h = 5, $fn = res);
            
            translate([-24,-5,0])cylinder(d = 10, h = 5, $fn = res);
            translate([24,-10,0])cylinder(d = 10, h = 5, $fn = res);
            translate([24,20,0])cylinder(d = 10, h = 5, $fn = res);
        }
    }
    union() // vaciados
    {
        //hueco central
        hull()
        {
            translate([0,0,4])cylinder(d = 15, h = 60, $fn = res*3);
            translate([0,50,4])cylinder(d = 30, h = 60, $fn = res*3);
            translate([-15.5, 15.5, 4])cylinder(d = 24, h = 60);  
        }
        //rodamiento tornillo moleteado
        translate([-15.5,15.5,-5])cylinder(d = 8, h = 10, $fn = res);
        translate([-15.5, 15.5, 1])cylinder(d = 9.3, h = 10, $fn = res/2);
        
        // rodamiento motor
        translate([0,0,2.5])cylinder(d = 9.3, h = 10, $fn = res/2);
        translate([0,0,-5])cylinder(d = 8, h = 10, $fn = res);
        hull()
        {
        translate([-6, 15.5, 3])cylinder(d = 7, h = 10, $fn = res/2);
        translate([-2, 15.5, 3])cylinder(d = 7, h = 10, $fn = res /2);
        }
        // tornillos cierre con el carro
        translate([-24,-5,-1])cylinder(d = 3.4, h = 10, $fn = res);
        translate([24,-10,-1])cylinder(d = 3.4, h = 10, $fn = res);
        translate([24,20,-1])cylinder(d = 3.4, h = 10, $fn = res);
        
        //tornillos_guias
        translate([19.5,-10,-1])cylinder(d = 7, h = 10, $fn = res);
        translate([9.5,-10,-1])cylinder(d = 7, h = 10, $fn = res);
        translate([-5,25,-1])cylinder(d = 7, h = 10, $fn = res);
        hull()
        {
        translate([5,25,-1])cylinder(d = 7, h = 10, $fn = res);
        translate([5,30,-1])cylinder(d = 7, h = 10, $fn = res);
        }
    }
}
