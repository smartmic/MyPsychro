#import <stdio.h>
#import <locale.h>
#import "MyPsychro.h"
#import "Bridge.h"
#import "Display.h"

int main( int argc, const char *argv[] ) {

    // create a new instance
    MyPsychro *frac = [[MyPsychro alloc] init];
    MyPsychro *frac2 = [[MyPsychro alloc] init];

    // set locale to display decimal separator as "."
    setlocale(LC_NUMERIC,"C");

    // set the values
	printf("\n");
	printf("-------------------------------------------------------------\n");
	printf("|     ..oOO| INTERACTIVE PSYCHROMETRIC CALCULATOR |OOo..     |\n");
	printf("|                                                            |\n");
	printf("| Functions from 2005 ASHRAE Handbook of Fundamentals        |\n");
	printf("| Library provided by Numerical Logics Inc., www.numlog.ca   |\n");
	printf("| Application developed by Martin Michel, 2009, 2015         |\n");
	printf("-------------------------------------------------------------\n");
	double x;
    printf("\nEnter the Dry Air Temperature [degC]: ");
    scanf("%lf", &x);
    [frac setDryBulbTemp:x];
	
	// method
	int i;
	printf("Now choose your further available air properties: \n");
	printf(" (1) set Pressure and Wet Bulb Temperature\n");
	printf(" (2) set Pressure and Dew Point Temperature\n");
	printf(" (3) set Pressure and Relative Humidity\n");
	printf(" (4) set Altitude and Wet Bulb Temperature\n");
	printf(" (5) set Altitude and Dew Point Temperature\n");
	printf(" (6) set Altitude and Relative Humidity\n");
	printf("\n");
	scanf("%i", &i);
	printf("\n");
	// printf("%i", i);
    // combined set
	double y,z;
	if ( i <= 3)
	{
	printf("Enter the Air Pressure [bar(a)]: ");
    scanf("%lf", &y); y = y * 1e5;
	}
	else
	{
	printf("Enter the Altitude [m]: ");
    scanf("%lf", &y);
	}
	
	if ( (i == 1) | (i == 4) )
	{
	printf("Enter the Wet Bulb Temperatur [degC]: ");
    scanf("%lf", &z);
	}
	
	if ( (i == 2) | (i == 5) )
	{
	printf("Enter the Dew Point Temperatur [degC]: ");
    scanf("%lf", &z);
	}
	
	if ( (i == 3) | (i == 6) )
	{
	printf("Enter the Relative Humidity: ");
    scanf("%lf", &z);
	}
	
	switch ( i )
	{
	case 1 :
    [frac2 setFlag: i setPressure: y andWetBulbTemp: z]; break;
	case 2 :
	[frac2 setFlag: i setPressure: y andDewPointTemp: z]; break;
	case 3 :
	[frac2 setFlag: i setPressure: y andRelHumidity: z]; break;
	case 4 :
	[frac2 setFlag: i setAltitude: y andWetBulbTemp: z]; break;
	case 5 :
	[frac2 setFlag: i setAltitude: y andDewPointTemp: z]; break;
	case 6 :
	[frac2 setFlag: i setAltitude: y andRelHumidity: z];
	}

    // print it
    
    //[frac print1];
	
	[frac process:frac2];
	[frac show];
	
	int ch;
	printf("\nPress enter to terminate this console application ... ");
	while (ch = getchar() != '\n' && ch != EOF); // keeps grabbing chars until none left
	getchar(); // NOW pause the program
	
    // free memory
    [frac dealloc];
    [frac2 dealloc];
	
    return 0;
}
