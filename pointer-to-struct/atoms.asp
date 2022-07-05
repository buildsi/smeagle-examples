
%============================================================================
% Library Facts
%============================================================================

%----------------------------------------------------------------------------
% Library: lib.so
%----------------------------------------------------------------------------
abi_typelocation("lib.so","_Z4FuncP8MyStruct","Import","Integer32","(%rdi)").
abi_typelocation("lib.so","_Z4FuncP8MyStruct","Import","Float64","((%rdi)+8)").
abi_typelocation("lib.so","_Z4FuncP8MyStruct","Export","Integer32","%rax").
