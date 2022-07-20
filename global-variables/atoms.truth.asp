
%============================================================================
% Library Facts
%============================================================================

%----------------------------------------------------------------------------
% Library: lib.so
%----------------------------------------------------------------------------
abi_typelocation("lib.so","inty","Export","Integer32","var").
abi_typelocation("lib.so","booley","Export","Integer8","var").
abi_typelocation("lib.so","doubley","Export","Float128","var").
abi_typelocation("lib.so","intyterny","Import","Integer32","var").
abi_typelocation("lib.so","thestructure","Export","Integer32","var").
abi_typelocation("lib.so","thestructure","Export","Float64","var+8").
abi_typelocation("lib.so","thestructure","Export","Float64","var+16").
abi_typelocation("lib.so","externstructy","Import","Integer32","var").
abi_typelocation("lib.so","externstructy","Import","Float64","var+8").
abi_typelocation("lib.so","externstructy","Import","Float64","var+16").
abi_typelocation("lib.so","_Z3foov","Export","Void","none").
