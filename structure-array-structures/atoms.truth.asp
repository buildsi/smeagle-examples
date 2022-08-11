
%============================================================================
% Library Facts
%============================================================================

%----------------------------------------------------------------------------
% Library: lib.so
%----------------------------------------------------------------------------
abi_typelocation("lib.so","main","Import","Integer32","%rdi").
abi_typelocation("lib.so","main","Both","Integer8","((%rsi))").
abi_typelocation("lib.so","main","Export","Integer32","%rax").
abi_typelocation("lib.so","_Z3fooiPP7Structy","Import","Integer32","%rdi").
abi_typelocation("lib.so","_Z3fooiPP7Structy","Import","Array[40:5]","((%rsi))").
abi_typelocation("lib.so","_Z3fooiPP7Structy","Import","Integer32","(((%rsi)))").
abi_typelocation("lib.so","_Z3fooiPP7Structy","Export","Integer32","%rax").
