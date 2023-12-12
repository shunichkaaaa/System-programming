#include "calculator.h"

int Calculator::Comp(double a, double b) {
    if (a < b) {
        return -1; // a is less than b
    } else if (a > b) {
        return 1; // a is greater than b
    } else {
        return 0; // a is equal to b
    }
}
