#include <iostream>
#include <string>

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

    fib_n = fib(n);

    cout << fib_n << flush;

    return 0;
}
