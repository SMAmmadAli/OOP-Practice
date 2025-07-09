// Enum

// Enum is a speacial type that represent constant value.


enum Gender{
  male, female, other;

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

  Gender gender = Gender.male;

  switch(gender){
    case Gender.male:
      print("Male");
    case Gender.female:
      print("Female");
    case Gender.
    other:
      print("Other");
  }

  print(person.name);
}