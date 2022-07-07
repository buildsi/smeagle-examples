int inty = 0;
bool booley = true;
long double doubley = 1.0;

extern int intyterny;

struct structy {
    int one;
    double two;
    double three;
};

structy thestructure;
extern structy externstructy;

void foo() {
  intyterny = 1;
  externstructy.one = 1;
}

