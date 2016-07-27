// circle.c: Calculate and print the Areas of Circles
#include <stdio.h> // Preprocessor directive
#define PI 3.1416

double fnCircularArea( double r ); // Function prototype 

int main(void)
{
    double dRadius = 1.0, dArea = 0.0;
    printf( "\tAreas of Circles\n\n" );
    printf( "\t\tRadius\t\tArea\n\t---------------------------------\n" );
    dArea = fnCircularArea( dRadius );
    printf( "Circle 1%14.3f\t%15.5f\n", dRadius, dArea );
    dRadius = 5.0;
    dArea = fnCircularArea( dRadius );
    printf( "Circle 2%14.3f\t%15.5f\n", dRadius, dArea );
    return 0;
}

// The function fnCircularArea( ) calculates the Area of a Circle
// Parameter: Radius of the Circle
// Returns: Area of the Circle
double fnCircularArea( double dR )
{
    return PI * dR * dR;
}
	











