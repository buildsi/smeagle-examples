struct Foo { int i; double d; }; 
int foo(Foo *f) { return 3; }

void bar(int **x){}

int baz(int *x) {
  return *x;
}

struct MyStruct {
  int a;
  double b;
};
int DoubleFunc(MyStruct **m){ return (*m)->a;};
int SingleFunc(MyStruct *m){ return m->a;};
