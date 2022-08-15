// C++ program to pass function as a
// pointer to any function
  
// Function that add two numbers
long int add(int x, int y)
{
    return x + y;
}
  
// Function that multiplies two
// numbers
long int multiply(int x, int y)
{
    return x * y;
}
  
// Function that takes a pointer
// to a function
int invoke(int x, int y,
           long int (*func)(int, int))
{
    return func(x, y);
}
  
// Driver Code
int main()
{
    // Pass pointers to add & multiply
    return invoke(20,10,&add) + invoke(20,10,&multiply);
}
