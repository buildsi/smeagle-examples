
%============================================================================
% Library Facts
%============================================================================

%----------------------------------------------------------------------------
% Library: lib.so
%----------------------------------------------------------------------------
abi_typelocation("lib.so","main","Import","Integer32","%rdi").
abi_typelocation("lib.so","main","Both","Integer8","((%rsi))").
abi_typelocation("lib.so","main","Export","Integer32","%rax").
abi_typelocation("lib.so","_Z3fooiP12StructyChildP13StructyParent","Import","Integer32","%rdi").
abi_typelocation("lib.so","_Z3fooiP12StructyChildP13StructyParent","Import","Integer32","(%rsi)").
abi_typelocation("lib.so","_Z3fooiP12StructyChildP13StructyParent","Import","Float64","(%rsi)+8").
abi_typelocation("lib.so","_Z3fooiP12StructyChildP13StructyParent","Import","Integer8","((%rsi)+16)").
abi_typelocation("lib.so","_Z3fooiP12StructyChildP13StructyParent","Import","Empty","((%rsi)+24)").
abi_typelocation("lib.so","_Z3fooiP12StructyChildP13StructyParent","Import","Integer32","((%rdx))").
abi_typelocation("lib.so","_Z3fooiP12StructyChildP13StructyParent","Import","Float64","((%rdx))+8").
abi_typelocation("lib.so","_Z3fooiP12StructyChildP13StructyParent","Import","Integer8","(((%rdx))+16)").
abi_typelocation("lib.so","_Z3fooiP12StructyChildP13StructyParent","Import","Empty","(((%rdx))+24)").
abi_typelocation("lib.so","_Z3fooiP12StructyChildP13StructyParent","Import","Integer8","(%rdx)+8").
abi_typelocation("lib.so","_Z3fooiP12StructyChildP13StructyParent","Export","Integer32","%rax").
