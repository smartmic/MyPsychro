# PSYCHROMETRIC CALCULATOR

A simple CLI psychrometric calculator based on the library from
http://numlog.ca/psychrometrics/psychrometrics.html

## Example Output

```
-------------------------------------------------------------
|        ..oOO| PSYCHROMETRIC CALCULATOR |OOo..             |
|                                                           |
| Functions from 2005 ASHRAE Handbook of Fundamentals       |
| Library provided by Numerical Logics Inc., www.numlog.ca  |
| Application developed by Martin Michel, Dec 2009          |
-------------------------------------------------------------

Enter the Dry Air Temperature [degC]: 14
Now choose your further available Air properties: 
(1) set Pressure and Wet Bulb Temperature
(2) set Pressure and Dew Point Temperature
(3) set Pressure and Relative Humidity
(4) set Altitude and Wet Bulb Temperature
(5) set Altitude and Dew Point Temperature
(6) set Altitude and Relative Humidity

1

Enter the Air Pressure [bar(a)]: 1,015
Enter the Wet Bulb Temperatur [Celsius]: 8

Your Set of Air Properties is: 
..............................................................
Dry Bulb Temperature [degC]    14,00
Wet Bulb Temperature [degC]    8,00
Dew Point Temperature [degC]   1,46
Relative Humidity [%]          42,53
Humiditiy Ration [gH2O/kgAir]  4,19
Specific Volume [m3/kg]        0,818
Degree of Saturation [-]       0,421
Enthalpy [kJ/kg]         24,7 
Vapour Pressure [Pa]        680   
Air Pressure [Pa]          101500

Press enter to terminate this console application ... 
```

## License

Distributed under the GNU General Public License, see
http://www.gnu.org/licenses/gpl.txt

## Author

Martin Michel, 2009
