import 'dart:math';

int? generateRandom() {
  
  int randomNumber = Random().nextInt(2);


  return randomNumber == 0 ? 100 : null;
}

void main() {

  int status = generateRandom() ?? 0;


  print('Status: $status');
}
