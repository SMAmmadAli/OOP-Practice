//            Encapsulation
// ----------------------------------------

//  class me do type ke properties or method hote hai.
//  1. Private
//  2. Public

//  ab Private data ko directly accesss nh karsakty dosre class me.
//  dosre class me access karne keleya kuch specialize function ya method bnany parhty hai.

//  1. setter method
//  1. getter method

// is process ko encapsulation kehty hai.

//              Now Coding

//---------------------------------------------------------------------------------------------------

import 'person.dart';

void main() {
  Person person = Person("Iftikhar", 73);

  person.dispalyInfo();

  print(person.middleName);
  print(person.age);

  person.setAge = 32;

  print(person.age);
}
