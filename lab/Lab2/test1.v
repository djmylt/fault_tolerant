module test1(A,B,C,E,L);
  input A,B,C,E;
  output L;
  assign L=((A&B)|( ~(B&C)))&E;
endmodule
