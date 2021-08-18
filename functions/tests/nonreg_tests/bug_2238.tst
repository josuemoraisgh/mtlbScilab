// =============================================================================
// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2009 - DIGITEO - Allan CORNET
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- CLI SHELL MODE -->

// <-- Non-regression test for bug 2238 -->
//
// <-- Bugzilla URL -->
// http://bugzilla.scilab.org/show_bug.cgi?id=2238
//
// <-- Short Description -->
// function can returns a wrong error
// 

function f2()
 xxxxxxF0xx = 32; 
 disp(xxxxxxF0xx);
endfunction 

f2();
