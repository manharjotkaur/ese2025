 // bubblesort.cpp sorting algorithm
  Created on: June 12, 2019
  Author: Manharjot kaur 


#include<iostream>
using namespace std;
int main ()
{
	int number[5];
	int i,j;
	cout<<"Enter the number";
	for(i=0;i<=4;i++);
	{
		cin>>number[5];
	}
	for(i=0;i<=3;i++);
	{
		for(j=i+1;j<=5;j++);
		{
			int temp;
			if(number[i]<number[j])
			{
				temp=number[i];
				number[i]=number[j];
				number[j]=temp;
			}
		}
	}
	for(i=0;i<=4;i++);
	{
		cout<<"=>"<<Number[i]<<endl;
	}

	return 0;
}





