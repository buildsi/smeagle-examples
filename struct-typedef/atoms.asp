
%============================================================================
% Library Facts
%============================================================================

%----------------------------------------------------------------------------
% Library: lib.so
%----------------------------------------------------------------------------
abi_typelocation("lib.so","_Z3barRP3TwoS1_","Import","Pointer64","((%rdi))").
abi_typelocation("lib.so","_Z3barRP3TwoS1_","Import","Reference64","(%rsi)").
abi_typelocation("lib.so","_Z3fooP3TwoS0_","Import","Pointer64","(%rdi)").
abi_typelocation("lib.so","_Z3fooP3TwoS0_","Import","Integer32","((%rsi))").
abi_typelocation("lib.so","_Z3fooP3TwoS0_","Import","Integer32","(((%rsi)+8)+8)").
abi_typelocation("lib.so","_Z3fooP3TwoS0_","Import","Integer32","(((%rsi)+16)+16)").
