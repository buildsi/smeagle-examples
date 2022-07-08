
%============================================================================
% Library Facts
%============================================================================

%----------------------------------------------------------------------------
% Library: lib.so
%----------------------------------------------------------------------------
abi_typelocation("lib.so","main","Export","Integer32","%rax").
abi_typelocation("lib.so","_Z3fooi3Foo","Import","Integer32","%rdi").
abi_typelocation("lib.so","_Z3fooi3Foo","Export","Integer32","%rsi").
abi_typelocation("lib.so","_Z3fooi3Foo","Export","Integer8","(%rdx+4)").
abi_typelocation("lib.so","_Z3fooi3Foo","Export","Float64","(%xmm0+16)").
abi_typelocation("lib.so","_Z3fooi3Foo","Export","Float64","(%xmm1+24)").
