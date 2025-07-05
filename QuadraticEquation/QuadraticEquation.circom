pragma circom 2.1.4;

include "../node_modules/circomlib/circuits/comparators.circom";

// Create a Quadratic Equation( ax^2 + bx + c ) verifier using the below data.
// Use comparators.circom lib to compare results if equal

template QuadraticEquation() {
    signal input x;     // x value
    signal input a;     // coeffecient of x^2
    signal input b;     // coeffecient of x 
    signal input c;     // constant c in equation
    signal input res;   // Expected result of the equation
    signal output out;  // If res is correct , then return 1 , else 0 . 

    // your code here
    signal x_squared;
    signal a_x_squared;
    signal b_x;

    x_squared <== x * x;
    a_x_squared <== a * x_squared;
    b_x <== b * x;

    component is_eq = IsEqual();
    is_eq.in[0] <== a_x_squared + b_x + c;
    is_eq.in[1] <== res;
    out <== is_eq.out;

}

component main  = QuadraticEquation();



