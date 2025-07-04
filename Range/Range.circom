pragma circom 2.1.4;

// In this exercise , we will learn how to check the range of a private variable and prove that 
// it is within the range . 

// For example we can prove that a certain person's income is within the range
// Declare 3 input signals `a`, `lowerbound` and `upperbound`.
// If 'a' is within the range, output 1 , else output 0 using 'out'

include "../node_modules/circomlib/circuits/comparators.circom";
include "../node_modules/circomlib/circuits/gates.circom";

template Range() {
    // your code here
    signal input a;
    signal input lowerbound;
    signal input upperbound;
    signal output out;

    signal isGreaterThanLowerbound;
    signal isLessThanUpperbound;

    isGreaterThanLowerbound <== GreaterEqThan(252)([a, lowerbound]);
    isLessThanUpperbound <== LessEqThan(252)([a, upperbound]);

    component and = AND();
    and.a <== isGreaterThanLowerbound;
    and.b <== isLessThanUpperbound;

    out <== and.out;
}

component main  = Range();


