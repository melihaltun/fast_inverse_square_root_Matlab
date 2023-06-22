% @fileName fastInvSqrt.m
% @author Melih Altun @2023

function y = fastInvSqrt (x)
  b = float2binary(x);  % 32 bit float bit vector

  b = ['0', b(1:end-1)];  % right shift floating num
  n = 1597463007 - bin2dec(b);  % bit manipulation trick to obtain y = x^(-1/2)

  b2 = dec2bin(n);   % convert back to binary
  b2 = [repmat('0',1,32-length(b2)),b2];  % pad zeros to make sure bit vector length is 32

  y = binary2float(b2);  % convert bit vector to float

  for i = 1:2  % Newton's method: adjust number of iterations for accuracy vs time trade-off
     y = y *(1.5 - (x/2 * y^2));
  end


  % y = x^(-1/2)
  % log(y) = -1/2 * log(x)

  % x = Sign(1 bit) * 2^(Exponent*(8 bits) - 2^8-1) * Mantissa(23 bits)/2^23
  % x = S * 2^(E-127) * M/2^23


