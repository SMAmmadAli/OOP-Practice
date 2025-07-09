// Mixin

// Mixin hum ko allow karta hai to share the code to different class.
// with using "With or On" keyword.
// mixin class ke object create nh hota.
// iska contructor create nh hota.
// or mixin class ko extend nh kar sakty.

// Mixin ko direct instantiate nahi kar sakte, jabke inheritance
// wali class ka object ban sakta hai.

// Dart mein ek class multiple mixins ko with keyword ke sath use kar sakti hai,
// jabke inheritance mein sirf ek class se inherit kiya ja sakta hai.

// Mixin code reuse ke liye lightweight aur flexible tareeka hai.

//--------------------Dart Example------------------------

mixin Flyable {
  void fly() => print("Main ur sakta hoon!");
}

mixin Singable {
  void sing() => print("Main ga sakta hoon!");
}

class Bird with Flyable, Singable {}

void main() {
  var bird = Bird();
  bird.fly(); // Output: Main ur sakta hoon!
  bird.sing(); // Output: Main ga sakta hoon!
}


//---------------------Flutter Example---------------------

import 'package:flutter/material.dart';

// Mixin for validation logic
mixin FormValidationMixin {
  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email khali nahi ho sakta!';
    }
    // Basic email regex for validation
    final emailRegex = RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
    if (!emailRegex.hasMatch(value)) {
      return 'Valid email address daalain!';
    }
    return null;
  }

  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password khali nahi ho sakta!';
    }
    if (value.length < 6) {
      return 'Password kam se kam 6 characters ka hona chahiye!';
    }
    return null;
  }

  String? validateUsername(String? value) {
    if (value == null || value.isEmpty) {
      return 'Username khali nahi ho sakta!';
    }
    if (value.length < 3) {
      return 'Username kam se kam 3 characters ka hona chahiye!';
    }
    return null;
  }
}

// StatefulWidget with Form
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

// State class using the mixin
class _LoginScreenState extends State<LoginScreen> with FormValidationMixin {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _usernameController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _usernameController.dispose();
    super.dispose();
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // Form valid hai, aage ka logic yahan likhain
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Form submitted successfully!')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login Form')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _usernameController,
                decoration: const InputDecoration(labelText: 'Username'),
                validator: validateUsername, // Mixin ka method
              ),
              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(labelText: 'Email'),
                validator: validateEmail, // Mixin ka method
              ),
              TextFormField(
                controller: _passwordController,
                decoration: const InputDecoration(labelText: 'Password'),
                obscureText: true,
                validator: validatePassword, // Mixin ka method
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _submitForm,
                child: const Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: LoginScreen(),
  ));
}
