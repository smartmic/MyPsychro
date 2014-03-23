#import "MyPsychro.h"
#import <stdio.h>

@implementation MyPsychro
-(void) print1 
{
    printf( "%4.2f\n", drybulbtemp);
}

-(void) print2
{
	printf( "%4.2f\n", dewpointtemp);
	//printf( "%4.2f\n", relhumidity);
}

-(void) setDryBulbTemp: (double) t
{ 
	drybulbtemp = t;
}
	
-(void) setFlag: (int) f setPressure: (double) p andWetBulbTemp: (double) w
{
	flag = f;
	pressure = p;
	wetbulbtemp = w;
}

-(void) setFlag: (int) f setPressure: (double) p andDewPointTemp: (double) d
{
	flag = f;
	pressure = p;
	dewpointtemp = d;
}

-(void) setFlag: (int) f setPressure: (double) p andRelHumidity: (double) r
{
	flag = f;
	pressure = p;
	relhumidity = r;
}

-(void) setFlag: (int) f setAltitude: (double) a andWetBulbTemp: (double) w
{
	flag = f;
	altitude = a;
	wetbulbtemp = w;
}
	
-(void) setFlag: (int) f setAltitude: (double) a andDewPointTemp: (double) d
{
	flag = f;
	altitude = a;
	dewpointtemp = d;
}

-(void) setFlag: (int) f setAltitude: (double) a andRelHumidity: (double) r
{
	flag = f;
	altitude = a;
	relhumidity = r;
}

-(int) flag
{
	return flag;
}

-(double) drybulbtemp
{
	return drybulbtemp;
}

-(double) wetbulbtemp
{
	return wetbulbtemp;
}

-(double) dewpointtemp
{
	return dewpointtemp;
}

-(double) relhumidity
{
	return relhumidity;
}

-(double) pressure
{
	return pressure;
}

-(double) altitude
{
	return altitude;
}

-(double) humratio
{
	return humratio;
}

-(double) specvol
{
	return specvol;
}

-(double) degreeofsat
{
	return degreeofsat;
}
	
-(double) enthalpy
{
	return enthalpy;
}

-(double) vappress
{
	return vappress;
}


@end