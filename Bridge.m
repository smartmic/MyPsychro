#import "Bridge.h"
#import "psychrometrics.cpp"
	
	
@implementation MyPsychro (Bridge) 
- (id) process: (MyPsychro *) type
{
   
	a = [self drybulbtemp];
	j = [type flag];
	//printf("%i", j);
	
	switch ( j )
	{
	case 1 :
	 wetbulbtemp = [type wetbulbtemp];
	 pressure = [type pressure];
	 dewpointtemp = GetTDewPointFromTWetBulb(a,wetbulbtemp,pressure);
	 relhumidity = GetRelHumFromTWetBulb(a,wetbulbtemp,pressure);
	 humratio = GetHumRatioFromTWetBulb(a,wetbulbtemp,pressure);
	 specvol = GetMoistAirVolume(a,humratio,pressure);
	 degreeofsat = GetDegreeOfSaturation(a,humratio,pressure);
	 enthalpy = GetMoistAirEnthalpy(a,humratio);
	 vappress = GetVapPresFromHumRatio(humratio,pressure);
	 break;	
	 
	case 2 :
	 dewpointtemp = [type dewpointtemp];
	 pressure = [type pressure];
	 wetbulbtemp = GetTWetBulbFromTDewPoint(a,dewpointtemp,pressure);
	 relhumidity = GetRelHumFromTWetBulb(a,wetbulbtemp,pressure);
	 humratio = GetHumRatioFromTWetBulb(a,wetbulbtemp,pressure);
	 specvol = GetMoistAirVolume(a,humratio,pressure);
	 degreeofsat = GetDegreeOfSaturation(a,humratio,pressure);
	 enthalpy = GetMoistAirEnthalpy(a,humratio);
	 vappress = GetVapPresFromHumRatio(humratio,pressure);
	 break;
	
	case 3 :
	 relhumidity = [type relhumidity];
	 pressure = [type pressure];
	 dewpointtemp = GetTDewPointFromRelHum(a,relhumidity);
	 wetbulbtemp = GetTWetBulbFromTDewPoint(a,dewpointtemp,pressure);
	 humratio = GetHumRatioFromTWetBulb(a,wetbulbtemp,pressure);
	 specvol = GetMoistAirVolume(a,humratio,pressure);
	 degreeofsat = GetDegreeOfSaturation(a,humratio,pressure);
	 enthalpy = GetMoistAirEnthalpy(a,humratio);
	 vappress = GetVapPresFromHumRatio(humratio,pressure);
	 break;
	 
	 
	}
	
	
	
	
	//b = [type relhumidity];
	//printf( "%4.2f\n", a);
	//printf( "%4.2f\n", b);
	
	//return [self type:GetTDewPointFromRelHum(a,b)];
    return self;
	
}
@end
