// Enum

// Enum is a speacial type that represent constant value.


enum Gender{
  male, female, other;

  String get displayName => this.toString().split('.').last;
}

enum status{
  loading, error, success
}

class Person{
  String? name;
  Gender gender;

  Person({this.name,required this.gender});
}

void main(){
  Person person = Person(name: "Ammad", gender: Gender.male);
  print(person.name);
  print(person.gender.displayName);
}