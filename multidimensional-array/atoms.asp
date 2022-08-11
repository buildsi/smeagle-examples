
%============================================================================
% Library Facts
%============================================================================

%----------------------------------------------------------------------------
% Library: lib.so
%----------------------------------------------------------------------------
abi_typelocation("lib.so","main","Import","Integer32","%rdi").
abi_typelocation("lib.so","main","Both","Integer8","((%rsi))").
abi_typelocation("lib.so","main","Export","Integer32","%rax").
abi_typelocation("lib.so","_Z3fooiP7Structy","Import","Integer32","%rdi").
abi_typelocation("lib.so","_Z3fooiP7Structy","Import","Array[100:5,5]","(%rsi)").
abi_typelocation("lib.so","_Z3fooiP7Structy","Import","Integer32","(%rsi)").
abi_typelocation("lib.so","_Z3fooiP7Structy","Import","Array[24000:10,20,30]","(%rsi)+100").
abi_typelocation("lib.so","_Z3fooiP7Structy","Import","Integer32","(%rsi)+100").
abi_typelocation("lib.so","_Z3fooiP7Structy","Export","Integer32","%rax").
