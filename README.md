// Jesse Ta
// 9/10/18
// Program3

#include <iostream>
using namespace std;

int main()
{
	do
	{
		cout << endl << "Metric BMR Calculator" << endl;
		cout << "____________________________________________________" << endl;
		cout << "Enter the weight in kilograms: ";
		double kilogramWeight;
		cin >> kilogramWeight;
		if (kilogramWeight < 0)
		{
			cout << "ERROR";
			break; //stops the loop
		}
		cout << "Enter the height in meters and centimeters: ";
		double meters, centimeters;
		cin >> meters >> centimeters;
		if (meters < 0 || centimeters < 0)
		{
			cout << "ERROR";
			break;
		}
		cout << "Enter the age: ";
		double age;
		cin >> age;
		if (age < 0)
		{
			cout << "ERROR";
			break; //stops the loop
		}
		cout << "Enter the gender (M for male or F for female): ";
		char gender;
		cin >> gender;

		double weightInPounds = kilogramWeight * 2.2046;
		double inches = ((meters * 100) + centimeters) * 0.3937;
		double femaleBMR = 655 + (4.3 * weightInPounds) + (4.7 * inches) - (4.7 * age);
		double maleBMR = 66 + (6.3 * weightInPounds) + (12.9 * inches) - (6.8 * age);

		if (gender == 'F' || gender == 'f')
		{
			cout << endl << "BMR = " << femaleBMR << " calories" << endl << endl;
			cout << femaleBMR / 230 << " of chocolate bars could be consumed to maintain a female's weight" << endl << endl;
		}
		else
		{
			cout << endl << "BMR = " << maleBMR << " calories" << endl << endl;
			cout << maleBMR / 230 << " of chocolate bars could be consumed to maintain a male's weight" << endl << endl;
		}

		cout << "Continue (Y - yes or N - no)? ";
		char ans;
		cin >> ans;

		if (ans == 'N' || ans == 'n') //stops the loop
			break;

	} while (true);

	return 0;
}
