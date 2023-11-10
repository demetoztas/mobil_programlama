
class  Laptop {
  int? id;
  String? name;
  int? ram;

  void display() {
    print("laptop id: $id");
    print("laptop  name: $name");
    print("laptop  ram: $ram");
  }

}

void main(){
  Laptop laptop1 = Laptop();
  Laptop laptop2 = Laptop();
  Laptop laptop3= Laptop();

  laptop1.id = 1;
  laptop1.name = "Dell XPS 15";
  laptop1.ram = 16;

  laptop2.id = 2;
  laptop2.name = "MacBook Pro";
  laptop2.ram = 32;

  laptop3.id = 3;
  laptop3.name = "Lenovo ideapad3";
  laptop3.ram = 8;

  laptop1.display();
  laptop2.display();
  laptop3.display();
}






