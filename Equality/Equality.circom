pragma circom 2.1.4;

include "../node_modules/circomlib/circuits/comparators.circom";

// Input 3 values using 'a'(array of length 3) and check if they all are equal.
// Return using signal 'c'.

template Equality() {
   // Your Code Here..
   signal input a[3];
   signal output c;

   signal eq01;

   component isZero01 = IsZero();
   isZero01.in <== a[0] - a[1];

   component isZero02 = IsZero();
   isZero02.in <== a[0] - a[2];

   c <== isZero01.out * isZero02.out;
}

component main = Equality();