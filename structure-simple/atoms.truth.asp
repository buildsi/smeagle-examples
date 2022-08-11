
%============================================================================
% Library Facts
%============================================================================

%----------------------------------------------------------------------------
% Library: lib.so
%----------------------------------------------------------------------------
abi_typelocation("lib.so","bar","Export","Integer32","var").
abi_typelocation("lib.so","bar","Export","Integer64","var+8").
abi_typelocation("lib.so","bar","Export","Integer32","var+16").
abi_typelocation("lib.so","bar","Export","Integer8","var+20").
abi_typelocation("lib.so","main","Import","Integer32","%rdi").
abi_typelocation("lib.so","main","Both","Integer8","((%rsi))").
abi_typelocation("lib.so","main","Export","Integer32","%rax").
