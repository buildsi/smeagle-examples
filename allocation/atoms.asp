
%============================================================================
% Library Facts
%============================================================================

%----------------------------------------------------------------------------
% Library: example
%----------------------------------------------------------------------------
abi_typelocation("example","main","Export","Integer32","%rax").
abi_typelocation("example","test_void","Export","Void","none").
abi_typelocation("example","test_ptr_ptr_char32_t","Import","Integer32","((%rdi))").
abi_typelocation("example","test_ptr_char32_t","Import","Integer32","(%rdi)").
abi_typelocation("example","test_char32_t","Import","Integer32","%rdi").
abi_typelocation("example","test_ptr_ptr_char16_t","Import","Integer16","((%rdi))").
abi_typelocation("example","test_ptr_char16_t","Import","Integer16","(%rdi)").
abi_typelocation("example","test_char16_t","Import","Integer16","%rdi").
abi_typelocation("example","test_ptr_ptr_wchar_t","Import","Integer32","((%rdi))").
abi_typelocation("example","test_ptr_wchar_t","Import","Integer32","(%rdi)").
abi_typelocation("example","test_wchar_t","Import","Integer32","%rdi").
abi_typelocation("example","test_ptr_ptr_long_double__Complex","Import","ComplexFloat256","((%rdi))").
abi_typelocation("example","test_ptr_long_double__Complex","Import","ComplexFloat256","(%rdi)").
abi_typelocation("example","test_long_double__Complex","Import","ComplexFloat256","framebase+8").
abi_typelocation("example","test_ptr_ptr_double__Complex","Import","ComplexFloat128","((%rdi))").
abi_typelocation("example","test_ptr_double__Complex","Import","ComplexFloat128","(%rdi)").
abi_typelocation("example","test_double__Complex","Import","ComplexFloat128","framebase+8").
abi_typelocation("example","test_ptr_ptr_float__Complex","Import","ComplexFloat64","((%rdi))").
abi_typelocation("example","test_ptr_float__Complex","Import","ComplexFloat64","(%rdi)").
abi_typelocation("example","test_float__Complex","Import","ComplexFloat64","framebase+8").
abi_typelocation("example","test_ptr_ptr_long_double","Import","Float128","((%rdi))").
abi_typelocation("example","test_ptr_long_double","Import","Float128","(%rdi)").
abi_typelocation("example","test_long_double","Import","Float128","framebase+8").
abi_typelocation("example","test_ptr_ptr_double","Import","Float64","((%rdi))").
abi_typelocation("example","test_ptr_double","Import","Float64","(%rdi)").
abi_typelocation("example","test_double","Import","Float64","%xmm0").
abi_typelocation("example","test_ptr_ptr_float","Import","Float32","((%rdi))").
abi_typelocation("example","test_ptr_float","Import","Float32","(%rdi)").
abi_typelocation("example","test_float","Import","Float32","%xmm0").
abi_typelocation("example","test_ptr_ptr_unsigned_long_long","Import","Integer64","((%rdi))").
abi_typelocation("example","test_ptr_unsigned_long_long","Import","Integer64","(%rdi)").
abi_typelocation("example","test_unsigned_long_long","Import","Integer64","%rdi").
abi_typelocation("example","test_ptr_ptr_unsigned_long","Import","Integer64","((%rdi))").
abi_typelocation("example","test_ptr_unsigned_long","Import","Integer64","(%rdi)").
abi_typelocation("example","test_unsigned_long","Import","Integer64","%rdi").
abi_typelocation("example","test_ptr_ptr_unsigned_int","Import","Integer32","((%rdi))").
abi_typelocation("example","test_ptr_unsigned_int","Import","Integer32","(%rdi)").
abi_typelocation("example","test_unsigned_int","Import","Integer32","%rdi").
abi_typelocation("example","test_ptr_ptr_unsigned_short","Import","Integer16","((%rdi))").
abi_typelocation("example","test_ptr_unsigned_short","Import","Integer16","(%rdi)").
abi_typelocation("example","test_unsigned_short","Import","Integer16","%rdi").
abi_typelocation("example","test_ptr_ptr_unsigned_char","Import","Integer8","((%rdi))").
abi_typelocation("example","test_ptr_unsigned_char","Import","Integer8","(%rdi)").
abi_typelocation("example","test_unsigned_char","Import","Integer8","%rdi").
abi_typelocation("example","test_ptr_ptr_unsigned","Import","Integer32","((%rdi))").
abi_typelocation("example","test_ptr_unsigned","Import","Integer32","(%rdi)").
abi_typelocation("example","test_unsigned","Import","Integer32","%rdi").
abi_typelocation("example","test_ptr_ptr_signed_long_long","Import","Integer64","((%rdi))").
abi_typelocation("example","test_ptr_signed_long_long","Import","Integer64","(%rdi)").
abi_typelocation("example","test_signed_long_long","Import","Integer64","%rdi").
abi_typelocation("example","test_ptr_ptr_signed_long","Import","Integer64","((%rdi))").
abi_typelocation("example","test_ptr_signed_long","Import","Integer64","(%rdi)").
abi_typelocation("example","test_signed_long","Import","Integer64","%rdi").
abi_typelocation("example","test_ptr_ptr_signed_int","Import","Integer32","((%rdi))").
abi_typelocation("example","test_ptr_signed_int","Import","Integer32","(%rdi)").
abi_typelocation("example","test_signed_int","Import","Integer32","%rdi").
abi_typelocation("example","test_ptr_ptr_signed_short","Import","Integer16","((%rdi))").
abi_typelocation("example","test_ptr_signed_short","Import","Integer16","(%rdi)").
abi_typelocation("example","test_signed_short","Import","Integer16","%rdi").
abi_typelocation("example","test_ptr_ptr_signed_char","Import","Integer8","((%rdi))").
abi_typelocation("example","test_ptr_signed_char","Import","Integer8","(%rdi)").
abi_typelocation("example","test_signed_char","Import","Integer8","%rdi").
abi_typelocation("example","test_ptr_ptr_signed","Import","Integer32","((%rdi))").
abi_typelocation("example","test_ptr_signed","Import","Integer32","(%rdi)").
abi_typelocation("example","test_signed","Import","Integer32","%rdi").
abi_typelocation("example","test_ptr_ptr_long_long","Import","Integer64","((%rdi))").
abi_typelocation("example","test_ptr_long_long","Import","Integer64","(%rdi)").
abi_typelocation("example","test_long_long","Import","Integer64","%rdi").
abi_typelocation("example","test_ptr_ptr_long","Import","Integer64","((%rdi))").
abi_typelocation("example","test_ptr_long","Import","Integer64","(%rdi)").
abi_typelocation("example","test_long","Import","Integer64","%rdi").
abi_typelocation("example","test_ptr_ptr_int","Import","Integer32","((%rdi))").
abi_typelocation("example","test_ptr_int","Import","Integer32","(%rdi)").
abi_typelocation("example","test_int","Import","Integer32","%rdi").
abi_typelocation("example","test_ptr_ptr_short","Import","Integer16","((%rdi))").
abi_typelocation("example","test_ptr_short","Import","Integer16","(%rdi)").
abi_typelocation("example","test_short","Import","Integer16","%rdi").
abi_typelocation("example","test_ptr_ptr_char","Import","Integer8","((%rdi))").
abi_typelocation("example","test_ptr_char","Import","Integer8","(%rdi)").
abi_typelocation("example","test_char","Import","Integer8","%rdi").
abi_typelocation("example","test_ptr_ptr_bool","Import","Integer8","((%rdi))").
abi_typelocation("example","test_ptr_bool","Import","Integer8","(%rdi)").
abi_typelocation("example","test_bool","Import","Integer8","%rdi").