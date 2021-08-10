// -------------------------------------------------------------------------
// SWT - Scilab wavelet toolbox
// Copyright (C) 2010-2014  Holger Nahrstaedt
//
// This program is free software; you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation; either version 2 of the License, or
// (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program; if not, write to the Free Software
// Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
//-------------------------------------------------------------------------
//
//  <-- NO CHECK ERROR OUTPUT -->


// shanwavf test


function [psi,x] = ref_mexihat(LB,UB,N);
x = linspace(LB,UB,N);
// psi = (Fb^0.5)*((sinc2(Fb*x/m).^m).*exp(2*%i*%pi*Fc*x));
psi = x.^2;
psi = (2/(sqrt(3)*%pi^0.25)) * exp(-psi/2) .* (1-psi);
//psi = 2*sqrt(sqrt(%pi))/sqrt(3) * exp(-psi/2) .* (1-psi);
endfunction


LB=-5;
UB=5;
N=1000;


[psi,x] = ref_mexihat(LB,UB,N);
[PSI,X]=mexihat(LB,UB,N);

assert_checkalmostequal ( real(PSI) , real(psi) , %eps, 1e-10 );
assert_checkalmostequal ( imag(PSI) , imag(psi) , %eps, 1e-10 );
assert_checkalmostequal ( X , x , %eps, %eps );

LB=-5;
UB=5;
N=1001;


[psi,x] = ref_mexihat(LB,UB,N);
[PSI,X]=mexihat(LB,UB,N);

assert_checkalmostequal ( real(PSI) , real(psi) , %eps, 1e-10 );
assert_checkalmostequal ( imag(PSI) , imag(psi) , %eps, 1e-10 );
assert_checkalmostequal ( X , x , %eps, %eps );
