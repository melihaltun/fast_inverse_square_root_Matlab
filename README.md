# fast_inverse_square_root_Matlab
Matlab code to demonstrate fast inverse square root algorithm

This code demonstrates fast inverse square root algotithm from Quake 3. 

The script is not as fast as a c implementation. In fact it runs slower than y=1/sqrt(x); command. The purpose is to show bit manupilations performed on the floating input number in order to obtain the inverse square root. In the actual c algorithm the bit manupilations are done directly on the memory adress of the floating number. In this example the number is converted into a bit vector and converted back into a number with conversion scripts.

More info on the algortihm:
https://en.wikipedia.org/wiki/Fast_inverse_square_root
