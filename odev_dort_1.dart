import 'dart:io';

void main() {
  
  stdout.write("Enter the first integer: ");
  int num1 = int.parse(stdin.readLineSync()!);

  stdout.write("Enter the second integer: ");
  int num2 = int.parse(stdin.readLineSync()!);

  Future.delayed(Duration(seconds: 3), () {
  
    int sum = num1 + num2;
    print("Sum after 3 seconds: $sum");
  });

  

}
