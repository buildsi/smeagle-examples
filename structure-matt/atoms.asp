
%============================================================================
% Library Facts
%============================================================================

%----------------------------------------------------------------------------
% Library: example
%----------------------------------------------------------------------------
abi_typelocation("example","bar","Export","Integer32","var").
abi_typelocation("example","bar","Export","Integer64","var").
abi_typelocation("example","bar","Export","Integer32","var").
abi_typelocation("example","bar","Export","Integer8","var").
abi_typelocation("example","main","Import","Integer32","%rdi").
abi_typelocation("example","main","Import","Integer8","((%rsi))").
abi_typelocation("example","main","Export","Integer32","%rax").
