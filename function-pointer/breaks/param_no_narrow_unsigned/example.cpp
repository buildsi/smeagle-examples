// C++ program to pass function as a
// pointer to any function
  
// Function that add two numbers
int add(unsigned int x, unsigned int y)
{
    return x + y;
}
  
// Function that multiplies two
// numbers
int multiply(unsigned int x, unsigned int y)
{
    return x * y;
}
  
// Function that takes a pointer
// to a function
int invoke(int x, int y,
           int (*func)(unsigned int, unsigned int))
{
    return func(x, y);
}
  
// Driver Code
int main()
{
    // Pass pointers to add & multiply
    return invoke(20,10,&add) + invoke(20,10,&multiply);
}
