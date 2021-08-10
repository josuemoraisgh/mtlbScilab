// ====================================================================
// Allan CORNET
// DIGITEO 2008 - 2010
// ====================================================================
// <-- CLI SHELL MODE -->
// ====================================================================


r = xls_NewExcel();
assert_checktrue(r);

r = xls_AddWorkbook();
assert_checktrue(r);

r = xls_SetWorksheet(1);
assert_checktrue(r);

// disable "Save" msg box ==> not saved !!!
r = xls_SetSave(%t);

assert_checktrue(xls_Close());
assert_checktrue(xls_Quit());
