
%============================================================================
% Library Facts
%============================================================================

%----------------------------------------------------------------------------
% Library: example
%----------------------------------------------------------------------------
abi_typelocation("example","booley","export","Integer8","var").
abi_typelocation("example","doubley","export","Float128","var").
abi_typelocation("example","_Z9fooreturniP7Structy","Import","Integer32","%rdi").
abi_typelocation("example","_Z9fooreturniP7Structy","Export","Integer32","(%rsi)").
abi_typelocation("example","_Z9fooreturniP7Structy","Export","Float64","((%rsi)+8)").
abi_typelocation("example","_Z9fooreturniP7Structy","Export","Integer8","((%rsi)+16)").
abi_typelocation("example","_Z9fooreturniP7Structy","Export","Integer32","%rax").
abi_typelocation("example","main","Import","Integer32","%rdi").
abi_typelocation("example","main","Import","Integer8","((%rsi))").
abi_typelocation("example","main","Export","Integer32","%rax").
abi_typelocation("example","_Z3foov","Export","Void","none").
