#include <stdio.h>
#include "tool.h"


int CalcInteger(int number)
{

    for(int i=0; i<10; i++)
    {
        number ++;

        printf("CalcInteger number:%d\n",number);
    }


    return number;
}
