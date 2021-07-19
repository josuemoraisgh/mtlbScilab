// This file is released under the 3-clause BSD license. See COPYING-BSD.
// Generated by builder.sce : Please, do not edit this file
// ----------------------------------------------------------------------------
//
if ~win64() then
  warning(_("This module requires a Windows x64 platform."));
  return
end
//
execmtlb_path = get_absolute_file_path('loader.sce');
//
// ulink previous function with same name
[bOK, ilib] = c_link('execmtlb');
if bOK then
  ulink(ilib);
end
//
list_functions = [ 'execmtlb';
];
addinter(execmtlb_path + filesep() + 'execmtlb' + getdynlibext(), 'execmtlb', list_functions);
// remove temp. variables on stack
clear execmtlb_path;
clear bOK;
clear ilib;
clear list_functions;
// ----------------------------------------------------------------------------
