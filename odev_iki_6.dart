abstract class Bottle{
  void Open();


}

class CokeBottle implements Bottle{

 CokeBottle(){
  //default constractor
 }

  @override
  void Open(){
    print("coke botlle is opened");
  }

  factory CokeBottle.customConstructor() {
     return CokeBottle();
    }


}


void main() {

  CokeBottle myBottle = CokeBottle.customConstructor();


  myBottle.Open();
}