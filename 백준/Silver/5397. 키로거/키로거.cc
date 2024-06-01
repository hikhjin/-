#include <iostream>
#include <string>
#include <stack>
#include <algorithm>
using namespace std;

int main(){
    int t;
    cin >> t;

    while(t--){
        string a;
        cin >> a;

        stack<int> left, right;

        for(int i=0; i<a.size(); i++){
            if(a[i] == '<'){
                if(!left.empty()){
                    right.push(left.top());
                    left.pop();
                }
            }
            else if(a[i] == '>'){
                    if(!right.empty()){
                    left.push(right.top());
                    right.pop();
                }
            }
            else if(a[i] == '-'){
                if(!left.empty()) left.pop();
            }
            else{
                left.push(a[i]);
            }
        }

        string ans = "";
        while(!left.empty()){
            ans += left.top();
            left.pop();
        }
        reverse(ans.begin(),ans.end());

        while(!right.empty()){
            ans += right.top();
            right.pop();
        }

        cout << ans << '\n';
    }
}