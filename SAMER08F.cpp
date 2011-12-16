#include <iostream>

long squares(int n)
{
  long int square_count = 0;
  for(int i = 1; i <= n; i++)
  {
    square_count += i*i;
  }
  return(square_count);
}

int main()
{
  int N;
  std::cin >> N;
  for (; N != 0; std::cin >> N )
  {
    std::cout << squares(N) << "\n";
  }

  return(0);
}
