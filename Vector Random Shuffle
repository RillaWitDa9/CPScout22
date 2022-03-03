#include <iostream>
#include <algorithm>
#include <vector>
#include<ctime>
#include<random>
using namespace std;

int main() {

	srand(time(NULL));
	vector<int> DOGs;

	cout << "Here are some NUMBERS" << endl << endl;


	for (int i = 0; i < 20; i++) 
		DOGs.push_back(rand()%50);
		
	for (int j = 0; j < 20; j++)
		cout << DOGs[j] << " ";

	cout << endl;
	cout << endl;

	cout << "SORT" << endl << endl;

	sort(DOGs.begin(), DOGs.end());

	for (int j = 0; j < 20; j++)
		cout << DOGs[j] << " ";

	cout << endl;
	cout << endl;

	cout << "SHUFFLE" << endl << endl;

	random_shuffle(DOGs.begin(), DOGs.end());

	for (int j = 0; j < 20; j++)
		cout << DOGs[j] << " ";

}
