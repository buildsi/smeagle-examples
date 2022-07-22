
%============================================================================
% Library Facts
%============================================================================

%----------------------------------------------------------------------------
% Library: example
%----------------------------------------------------------------------------
abi_typelocation("example","bar","Export","Integer32","var").
abi_typelocation("example","bar","Export","Integer64","var+8").
abi_typelocation("example","bar","Export","Integer32","var+16").
abi_typelocation("example","bar","Export","Integer8","var+20").
abi_typelocation("example","main","Import","Integer32","%rdi").
abi_typelocation("example","main","Both","Integer8","((%rsi))").
abi_typelocation("example","main","Export","Integer32","%rax").
