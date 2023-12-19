import 'dart:convert';
import 'homepage.dart';
import 'signup.dart'; // Import your SignupPage
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

// ... (Your existing imports)

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>(); // Add a GlobalKey for the form

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _isPasswordVisible = false;

  Future<void> _login() async {
    final response = await http.post(
      Uri.parse('http://localhost/loginv2/login.php'),
      body: {
        'username': usernameController.text,
        'password': passwordController.text,
      },
    );

    if (response.statusCode == 200) {
      final result = jsonDecode(response.body);
      if (result['message'] == 'Login successful') {
        // Navigate to the next screen (Firstpage)
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Firstpage()),
        );
      } else {
        // Handle login failure
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Incorrect username or password'),
          ),
        );
      }
    } else {
      // Handle errors
      print('Error: ${response.statusCode}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade800,
        title: Text(
          'Login Page',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          // Wrap the Form widget around your Column
          key: _formKey, // Set the key for the form
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage('images/letter.png'),
                height: 100,
                width: 100,
              ),
              TextFormField(
                style: TextStyle(
                  color: Colors.orange,
                  fontFamily: 'RobotoMono',
                ),
                controller: usernameController,
                decoration: InputDecoration(
                  labelText: 'Username',
                  labelStyle: TextStyle(color: Colors.white),
                  prefixIcon: Icon(
                    Icons.person,
                    color: Colors.orange,
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your username';
                  }
                  return null;
                },
                obscureText: false,
              ),
              TextFormField(
                style: TextStyle(
                  color: Colors.orange,
                  fontFamily: 'RobotoMono',
                ),
                controller: passwordController,
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: TextStyle(color: Colors.white),
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.orange,
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        // Toggle the obscureText property of the password field
                        _isPasswordVisible = !_isPasswordVisible;
                      });
                    },
                    icon: Icon(
                      _isPasswordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: Colors.orange,
                    ),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },
                obscureText: !_isPasswordVisible,
              ),

              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
                onPressed: () {
                  if (_formKey.currentState?.validate() ?? false) {
                    // Form is valid, perform login
                    _login();
                  }
                },
                child: Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'RobotoMono',
                  ),
                ),
              ),
              SizedBox(height: 10), // Add some spacing between buttons
              TextButton(
                onPressed: () {
                  // Navigate to the signup page (SignupPage)
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignupPage()),
                  );
                },
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                    color: Colors.orange,
                    fontFamily: 'RobotoMono',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}
