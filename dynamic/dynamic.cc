#include <iostream>
#include <string>

using namespace std;

typedef unsigned long long ull;

ull fib(int n)
{
    return 1;
}

int main(int argc, char** argv)
{

    if ( argv != 2 )
    {
        cout << "Usage: " << argv[0] << " n" << endl;
        return 1;
    }

    string s_n = argv[1];
    int n = stoi(s_n);
    ull fib_n;

    fib_n = fib(n);

    return 0;
}
