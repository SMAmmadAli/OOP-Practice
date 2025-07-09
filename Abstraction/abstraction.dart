//              Abstraction
// ----------------------------------------

//  Abstract class jis ke instance ya object ya initialize nh hote.
//  is ke ander method srf define hote hai.
//  method ke working dosre class me hote hai jo is ko extend karte hai.
//  Abstract classes can't be instantiated.
//  Try creating an instance of a concrete subtype

void main() {
  BaseApiImplemention baseApiImplemention = BaseApiImplemention();
  Map<String, dynamic> credentials = {
    "email": "tumhareEmail@gmail.com",
    "password": "tumhara_Password"
  };
  baseApiImplemention.loginPageApi(
      credentials['email'], credentials['password']);
  baseApiImplemention.homePageApi(Future.delayed(Duration(seconds: 3)));
  baseApiImplemention.profilePageApi();
}

abstract class BaseApiServices {
  void loginPageApi(String email, String password);

  void homePageApi(Future<dynamic> future);

  void profilePageApi();
}

class BaseApiImplemention extends BaseApiServices {
  @override
  void homePageApi(Future<dynamic> future) {
    future.then((value) {
      print("Home Page Screen");
    });
  }

  @override
  void loginPageApi(String email, String password) {
    print("Successfully login");
  }

  @override
  void profilePageApi() async {
    await Future.delayed(Duration(seconds: 5));
    print("User Profile Screen");
  }
}
