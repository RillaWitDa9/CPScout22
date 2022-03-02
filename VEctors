#include <iostream>
#include <algorithm>
#include <vector>
#include <string>
using namespace std;

int main() {
    string input = "SOUP";

   vector<int> scores; //decalres a 8 slot array

   for (int i = 0; i < 10; i++)
       scores.push_back(rand() % 50 + 51);

    //use a loop to print out the array
    cout << "Here are your scores, bucko:" << endl << endl;
    for (int i = 0; i < 10; i++)
        cout << scores[i] << endl;

    vector<string> fRENDS;

    cout << "Enter your FRIENDS NAMES" << endl << endl;

    cin >> input;
    fRENDS.push_back( input);

    cin >> input;
    fRENDS.push_back(input);

    cin >> input;
    fRENDS.push_back(input);

    cin >> input;
    fRENDS.push_back(input);

    cin >> input;
    fRENDS.push_back(input);

    if (find(fRENDS.begin(), fRENDS.end(), "alejandro") != fRENDS.end() || find(fRENDS.begin(), fRENDS.end(), "Alejandro") != fRENDS.end())
		cout << "You have cool friends " << endl;
	else
        cout << "I need to make more cool friends, like Alejandro I'm such a loser wa" << endl;

}
