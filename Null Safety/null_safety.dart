//  Null Safety

// 2 type ke variables  hoty hai

// 1. nullable

//  value can be null

// 2. non-nullabe

//  values has assign

// --------------------------------------------------------------------------

// ! (null assert operator): Used to assert that a nullable variable isn't null,
//                           and throws an exception if it is.

// ?. (null-aware access): Allows access to a property or method on a nullable variable
//                         only if the variable is not null. If the variable is null, it short-circuits and returns null instead of throwing an exception.

void main() {
  //  non-nullable value

  String name = "Virat Kholi";
  print(name);

  // nullable value

  int? age;
  print(age);

  print(age ?? 12);

  age = 40;
  print(age);
}
