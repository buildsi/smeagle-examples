
%============================================================================
% Library Facts
%============================================================================

%----------------------------------------------------------------------------
% Library: lib.so
%----------------------------------------------------------------------------
abi_typelocation("lib.so","_Z10SingleFuncP8MyStruct","Import","Integer32","(%rdi)").
abi_typelocation("lib.so","_Z10SingleFuncP8MyStruct","Import","Float64","((%rdi)+8)").
abi_typelocation("lib.so","_Z10SingleFuncP8MyStruct","Export","Integer32","%rax").
abi_typelocation("lib.so","_Z10DoubleFuncPP8MyStruct","Import","Integer32","((%rdi))").
abi_typelocation("lib.so","_Z10DoubleFuncPP8MyStruct","Import","Float64","(((%rdi))+8)").
abi_typelocation("lib.so","_Z10DoubleFuncPP8MyStruct","Export","Integer32","%rax").
abi_typelocation("lib.so","_Z3bazPi","Both","Integer32","(%rdi)").
abi_typelocation("lib.so","_Z3bazPi","Export","Integer32","%rax").
abi_typelocation("lib.so","_Z3barPPi","Both","Integer32","((%rdi))").
abi_typelocation("lib.so","_Z3fooP3Foo","Import","Integer32","(%rdi)").
abi_typelocation("lib.so","_Z3fooP3Foo","Import","Float64","((%rdi)+8)").
abi_typelocation("lib.so","_Z3fooP3Foo","Export","Integer32","%rax").
