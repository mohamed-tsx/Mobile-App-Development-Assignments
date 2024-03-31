class Person {
  // Variables
  String? name;
  int? age;

  // Constructor
  Person(this.name, this.age);

  // Method
  void setPerson(String name, int age) {
    this.name = name;
    this.age = age;
  }

  // Method
  void getPerson() {
    print("Hi my name is $name and my age is $age");
  }
}

// Function
void main() {
  // Object
  Person qof = new Person("Kheyre", 20);
  qof.setPerson("Kheyre", 20);
  qof.getPerson();
}
