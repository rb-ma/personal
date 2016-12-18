#include <iostream>
#include <vector>

using namespace std;

int get_product_of_all_ints_except_at_index(std::vector<int> &arr)
{
  vector<int> prod_b, prod_a;
  prod_b.push_back(0);
  prod_a.push_back(0);

  int pb = 1, pa = 1;
  for (unsigned i = 1; i < arr.size(); i++) {
    auto b = arr[i-1];
    auto a = arr[arr.size()-i];
    prod_b[i] = (pb *= b ? b:1);
    prod_a[i] = (pa *= a ? a:1);
  }
  for (unsigned i = 0; i < arr.size(); ++i) {
    arr[i] = max(1, prod_b[i])*max(1,prod_a[i]);
  }

  // Learning
  /*
    As usual, try to use a greedy algoirthm that can get you a lot of
    information in the first sweep while you keep updating some
    important state -- key takeway is to utilize a form of memoization;
    don't do the same work over and over again. Rather, save the results
    a usable format in a LUT and then re-use as needed
   */
}

int main(void)
{

  return 0;
}
