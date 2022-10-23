#include <stdio.h>

int main()
{
int ek = 1;
int n;
while(ek == 1){
printf("Enter n(2-100): ");
scanf("%d", &n);
if(n >= 2 && n <= 100){
ek = 0;
break;
} else {
printf("Incorrect input, try again\n");
}
}
int a [100];
int b [100];
printf("Enter array A\n");
for(int i = 0; i < n; i++){
printf("a[%d]: ", i);
scanf("%d", &a[i]);
}
printf("Generated array B:\n");
for(int j = 0; j < n - 1; j++){
b[j] = a[j] - a[j + 1];
printf("b[%d]: %d\n", j, b[j]);
}
return 0;
}
