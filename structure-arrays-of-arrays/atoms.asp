
%============================================================================
% Library Facts
%============================================================================

%----------------------------------------------------------------------------
% Library: example
%----------------------------------------------------------------------------
abi_typelocation("example","main","Import","Integer32","%rdi").
abi_typelocation("example","main","Both","Integer8","((%rsi))").
abi_typelocation("example","main","Export","Integer32","%rax").
abi_typelocation("example","_Z3fooiP7Structy","Import","Integer32","%rdi").
abi_typelocation("example","_Z3fooiP7Structy","Import","Integer32","(%rsi)").
abi_typelocation("example","_Z3fooiP7Structy","Import","Integer32","((%rsi)+100)").
abi_typelocation("example","_Z3fooiP7Structy","Export","Integer32","%rax").
