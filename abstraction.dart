//              Abstraction
// ----------------------------------------

//  Abstract class jis ke instance ya object ya initialize nh hote.
//  is ke ander method srf define hote hai.
//  method ke working dosre class me hote hai jo is ko extend karte hai.
//  Abstract classes can't be instantiated.
//  Try creating an instance of a concrete subtype

// void main() {
//   BaseApiImplemention baseApiImplemention = BaseApiImplemention();
//   Map<String, dynamic> credentials = {
//     "email": "tumhareEmail@gmail.com",
//     "password": "tumhara_Password"
//   };
//   baseApiImplemention.postApi(credentials['email'], credentials['password']);
//   baseApiImplemention.getApi(
//     Future.delayed(Duration(seconds: 1))
//   );
// }

void main() {
  BaseApiImplemention baseApiImplemention = BaseApiImplemention();
  Map<String, dynamic> credentials = {
    "email": "tumhareEmail@gmail.com",
    "password": "tumhara_Password"
  };
  baseApiImplemention.postApi(credentials['email'], credentials['password']);
  baseApiImplemention.getApi(Future.delayed(Duration(seconds: 5)));
}

// abstract class BaseApiServices {
//   void postApi(String email, String password);

//   void getApi( Function());
// }

abstract class BaseApiServices {
  void postApi(String email, String password);

  void getApi(Future<dynamic> future);
}

// class BaseApiImplemention extends BaseApiServices {
//   @override
//   void getApi(Function()) {
//     print("get Api");
//   }

class BaseApiImplemention extends BaseApiServices {
  @override
  void getApi(Future<dynamic> future) {
    future.then((value) {
      print("get Api");
    });
  }

  @override
  void postApi(String email, String password) {
    print("Successfully login");
  }
}
