
class House {
  int id;
  String name;
  double price;

  House(this.id, this.name, this.price);
}

void main() {
  // Create three house objects
  House house1 = House(1, "köşk", 150000.0);
  House house2 = House(2, "Modern Villa", 350000.0);
  House house3 = House(3, "yalı", 200000.0);

  // Create a list to store the house objects
  List<House> houses = [house1, house2, house3];

  // Print details of all houses in the list
  print("House Details:");
  for (var house in houses) {
    print("House ID: ${house.id}");
    print("House Name: ${house.name}");
    print("House Price: \$${house.price.toStringAsFixed(2)}\n");
  }
}