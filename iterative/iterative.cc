#include <iostream>
#include <string>
#include <chrono>

using namespace std;

typedef unsigned long long ull;

ull fib(int n)
{
    ull first = 1;
    ull second = 1;
    for (int i = 2; i < n; i++)
    {
        first = first + second;
        second = first - second;
    }

    return first;
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

    fib_n = fib(n);

#ifdef TIME
    auto end_time = chrono::system_clock::now();
    elapsed_time = end_time - start_time;
    cout << elapsed_time.count() << "," << flush;
#endif

    cout << fib_n << flush;

    return 0;
}
