#import "Display.h"
 
@implementation MyPsychro (Display) 

- (id) show
{
	printf( "\n Your Set of Air Properties is: \n" );
	printf("..............................................................\n");
	printf("%-36s%-4.2f\n"," Dry Bulb Temperature [degC]", [self drybulbtemp]);
	printf("%-36s%-4.2f\n"," Wet Bulb Temperature [degC]", [self wetbulbtemp]);
    printf("%-36s%-4.2f\n"," Dew Point Temperature [degC]", [self dewpointtemp]);
	printf("%-36s%-4.2f\n"," Relative Humidity [%]", [self relhumidity]*100);
	printf("%-36s%-4.2f\n"," Humiditiy Ration [gH2O/kgAir]", [self humratio]*1000);
	printf("%-36s%-4.3f\n"," Specific Volume [m3/kg]", [self specvol]);
	printf("%-36s%-4.3f\n"," Degree of Saturation [-]", [self degreeofsat]);
	printf("%-36s%-5.1f\n"," Enthalpy [kJ/kg]", [self enthalpy]*1e-3);
	printf("%-36s%-6.0f\n"," Vapour Pressure [Pa]", [self vappress]);
    printf("%-36s%-6.0f\n"," Air Pressure [Pa]", [self pressure]);
    return self;
}
@end
