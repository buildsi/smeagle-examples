enum Color { red, green, blue };

enum class ColorClassEnum : int { red=-77, blue=14, green=0 };
void foo(ColorClassEnum c) {}

Color print_color(Color r){
  return r;
}

// Enums with different sizes underlying types
enum class CharEnum : char {h='h', i='i', j='j'};
enum class DoubleEnum : bool { a=true, b=false};
