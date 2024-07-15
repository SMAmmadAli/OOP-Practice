class Person {
  String _name;
  int _age;

  //  Constructor

  Person(this._name, this._age);

  // getter method

  String get middleName => _name;
  int get age => _age;

  // setter method

  set setAge(int age) {
    if (age > 0) {
      _age = age;
    }
  }

  void dispalyInfo() {
    print("Name $_name, Age $_age");
  }
}
