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

r = xls_SetData('A1',%pi);
assert_checktrue(r);

r = xls_Protect('Mon Password');
assert_checktrue(r);

// Sheet protected
r = xls_SetData('A2',%pi);
assert_checkfalse(r);

r = xls_SaveAs(TMPDIR+filesep()+'test_xls_Protect.xls');
assert_checktrue(r);

r = xls_Close();
assert_checktrue(r);

r = xls_Open(TMPDIR+filesep()+'test_xls_Protect.xls');
assert_checktrue(r);

r = xls_SetWorksheet(1);
assert_checktrue(r);

// Sheet protected
r = xls_SetData('A2',%pi);
assert_checkfalse(r);

r = xls_UnProtect('Mon Password');
assert_checktrue(r);

// Sheet unprotected
r = xls_SetData('A2',%pi);
assert_checktrue(r);

r = xls_DisplayAlerts(%f);
assert_checktrue(r);

r = xls_SetSave(%f);
assert_checktrue(r);

r = xls_SaveAs(TMPDIR+filesep()+'test_xls_Protect.xls');
assert_checktrue(r);

r = xls_Close();
assert_checktrue(r);

r = xls_Quit();
assert_checktrue(r);
