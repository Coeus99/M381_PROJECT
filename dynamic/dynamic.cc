#include <iostream>
#include <string>
#include <chrono>

using namespace std;

typedef unsigned long long ull;

ull fib(int n, ull *memo)
{
    if ( memo[n - 1] != 0 )
        return memo[n - 1];
    memo[n - 1] = fib(n - 1, memo) + fib(n - 2, memo);
    return memo[n - 1];
}

int main(int argc, char** argv)
{

    if ( argc != 2 )
    {
        cout << "Usage: " << argv[0] << " n" << endl;
        return 1;
    }

    string s_n = argv[1];
    int n = stoi(s_n);
    ull fib_n;

#ifdef TIME
    chrono::duration<double> elapsed_time;
    auto start_time = chrono::system_clock::now();
#endif

    ull *memo = new ull[n];
    for (int i = 0; i < n; i++)
        memo[i] = 0;
    memo[0] = 1;
    memo[1] = 1;

    fib_n = fib(n,memo);

    delete memo;

#ifdef TIME
    auto end_time = chrono::system_clock::now();
    elapsed_time = end_time - start_time;
    cout << elapsed_time.count() << "," << flush;
#endif

    cout << n << "," << fib_n << endl;

    return 0;
}
