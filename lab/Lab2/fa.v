
`uselib lib=calc1_black_box


module FA ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n2;

  HDEXOR2D1 U4 ( .A1(cin), .A2(n2), .Z(sum) );
  HDAO22DL U5 ( .A1(b), .A2(a), .B1(n2), .B2(cin), .Z(cout) );
  HDEXOR2D1 U6 ( .A1(a), .A2(b), .Z(n2) );
endmodule

