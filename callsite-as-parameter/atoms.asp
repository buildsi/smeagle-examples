
%============================================================================
% Library Facts
%============================================================================

%----------------------------------------------------------------------------
% Library: lib.so
%----------------------------------------------------------------------------
abi_typelocation("lib.so","close","Import","Integer32","%rdi").
abi_typelocation("lib.so","close","Export","Integer32","%rax").
abi_typelocation("lib.so","main","Import","Integer32","%rdi").
abi_typelocation("lib.so","main","Import","Integer8","((%rsi))").
abi_typelocation("lib.so","main","Export","Integer32","%rax").
