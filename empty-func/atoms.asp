
%============================================================================
% Library Facts
%============================================================================

%----------------------------------------------------------------------------
% Library: example
%----------------------------------------------------------------------------
abi_typelocation("example","main","Import","Integer32","%rdi").
abi_typelocation("example","main","Both","Integer8","((%rsi))").
abi_typelocation("example","main","Export","Integer32","%rax").
abi_typelocation("example","_Z3foov","Export","Void","none").
