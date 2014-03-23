//#import <objc/Object.h>
#import <Foundation/NSObject.h>

 
@interface MyPsychro: NSObject {
	int flag;
    double drybulbtemp;
    double wetbulbtemp;
	double dewpointtemp;
	double relhumidity;
	double pressure;
	double altitude;
	double humratio;
	double specvol;
	double degreeofsat;
	double enthalpy;
	double vappress;
    
}
-(void) print1;
-(void) print2;
-(void) setDryBulbTemp: (double) t;

-(void) setFlag: (int) f setPressure: (double) p andWetBulbTemp: (double) w;
-(void) setFlag: (int) f setPressure: (double) p andDewPointTemp: (double) d;
-(void) setFlag: (int) f setPressure: (double) p andRelHumidity: (double) r;

-(void) setFlag: (int) f setAltitude: (double) a andWetBulbTemp: (double) w;
-(void) setFlag: (int) f setAltitude: (double) a andDewPointTemp: (double) d;
-(void) setFlag: (int) f setAltitude: (double) a andRelHumidity: (double) r;

-(int) flag;
-(double) drybulbtemp;
-(double) wetbulbtemp;
-(double) dewpointtemp;
-(double) relhumidity;
-(double) pressure;
-(double) altitude;
-(double) humratio;
-(double) specvol;
-(double) degreeofsat;
-(double) enthalpy;
-(double) vappress;
    

@end
