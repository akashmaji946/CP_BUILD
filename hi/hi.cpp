#include<bits/stdc++.h>
using namespace std;


int main(){

	int arr[100];
	int n;
	cin >> n;
	for(int i = 0; i < n; i++){
		cin >> arr[i];
	}

	// find prefix sum
	for(int i = 1; i < n; i++){
		arr[i] += arr[i-1];
	}

	for(int i = 0; i < n; i++){
		cout << arr[i] << " ";
	}
	cout << endl;


	int q;
	cin >> q;
	while(q--){
		int l, r;
		cin >> l >> r;
		int sum = arr[r] - (l > 0 ? arr[l-1] : 0);
		cout << sum << ":";
	}
	cout << endl;

	return 0;
}