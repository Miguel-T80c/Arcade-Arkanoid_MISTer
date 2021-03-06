//============================================================================
// 
//  SystemVerilog implementation of the 74LS27 triple 3-input NOR gate
//  Copyright (C) 2019 Ace
//
//  Permission is hereby granted, free of charge, to any person obtaining a
//  copy of this software and associated documentation files (the "Software"),
//  to deal in the Software without restriction, including without limitation
//  the rights to use, copy, modify, merge, publish, distribute, sublicense,
//  and/or sell copies of the Software, and to permit persons to whom the 
//  Software is furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
//  FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
//  DEALINGS IN THE SOFTWARE.
//
//============================================================================

//Chip pinout:
/*     _____________
     _|             |_
a1  |_|1          14|_| VCC
     _|             |_                     
b1  |_|2          13|_| c1
     _|             |_
a2  |_|3          12|_| y1
     _|             |_
b2  |_|4          11|_| c3
     _|             |_
c2  |_|5          10|_| b3
     _|             |_
y2  |_|6           9|_| a3
     _|             |_
GND |_|7           8|_| y3
      |_____________|
*/

module ls27
(
	input  a1, a2, a3,
	input  b1, b2, b3,
	input  c1, c2, c3,
	output y1, y2, y3
);

assign y1 = ~(a1 | b1 | c1);
assign y2 = ~(a2 | b2 | c2);
assign y3 = ~(a3 | b3 | c3);

endmodule
