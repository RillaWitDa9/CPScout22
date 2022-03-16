#include <iostream>
#include <algorithm>
#include <vector>
using namespace std;

int main() {
vector<string> lol;
vector<string>::iterator iter;
string input;

cout<< "Give me some names and when you are done press q" << endl << endl;
while (input != "q") {
cin >> input;
if(input != "q")
lol.push_back(input);
}

cout<<endl;

cout << "SHUFFLE" << endl;
random_shuffle(lol.begin(), lol.end());
for (iter = lol.begin(); iter != lol.end(); ++iter)
cout << *iter << " " << *iter++ << endl;

}
