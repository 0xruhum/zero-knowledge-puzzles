pragma circom 2.1.4;


// Input : a , length of 2 .
// Output : c .
// In this exercise , you have to check that a[0] is NOT equal to a[1], if not equal, output 1, else output 0.
// You are free to use any operator you may like . 

// HINT:NEGATION

template NotEqual() {

    // Your code here.
    signal input a[2];
    signal output c;

    var temp = a[0] - a[1];
    signal inv;
    /*
        if temp is 0 (both values are equal), then inv is 0
        if temp is not 0 (both values are not equal), then inv is 1 / temp

        if in = 0 and inv = 0, then in * inv = 0
        if in != 0 and inv != 0, then in * inv = 1

        That'll give us the correct output
    */
    inv <-- temp != 0 ? 1 / temp : 0;

    c <== temp * inv;
}

component main = NotEqual();