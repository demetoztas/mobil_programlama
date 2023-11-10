class Animal {

  int? id ;
  String? name ;
  String? color;


}

 class Cat extends Animal{

  String? sound;

  void display(){

    print("cat's id:$id ");
    print("cat's name: $name");
    print("cat's color: $color");
    print("cat's sound $sound");
  }



 }

 void main(){

  Cat cat =new  Cat();

  cat.id =2;
  cat.name="cabbar";
  cat.color="gri";
  cat.sound="meoww";

  cat.display();


 }