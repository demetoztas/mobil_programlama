import 'dart:async';

void main() {

  List<int> numbers = [1, 2, 3, 4, 5];
  print("list:$numbers");

  
  modifyListAsync(numbers).then((modifiedList) {
    
    print('Modified List: $modifiedList');
  });
}


Future<List<int>> modifyListAsync(List<int> inputList) async {
  List<int> modifiedList = [];

  
  await Future.forEach(inputList, (int number) async {
    
    int modifiedNumber = await multiplyByTwoAsync(number);
    modifiedList.add(modifiedNumber);
  });

  return modifiedList;
}


Future<int> multiplyByTwoAsync(int number) async {
 
  await Future.delayed(Duration(seconds: 1));
  return number * 2;
}