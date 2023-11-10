enum Gender { Male, Female, Other }

class Person {
  
  Gender? gender;


  Person( this.gender);

  
  void display() {
    print("Gender: $gender");
  }
}

void main() {
  Person p1 = Person( Gender.Male);
  p1.display();

  Person p2 = Person( Gender.Female);
  p2.display();
}