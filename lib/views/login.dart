import 'package:flutter/material.dart';
import '../models/data.dart';
import '../root.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool showPassword = false;

  void login() {
    String username = usernameController.text;
    String password = passwordController.text;

    if (username.isEmpty || password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Username dan password harus diisi'),
        ),
      );

      return;
    }

    if (username == user1.username && password == user1.password) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => Root(
            username: username,
          ),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Username atau password salah'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFF5FF),

      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(20),

              child: Column(
                children: [
                  // Logo Gacoan
                  Image.asset(
                    'assets/logo_gacoan.jpeg',
                    width: 150,
                    height: 150,
                  ),

                  SizedBox(height: 5),

                  Text(
                    'Selamat Datang di Gacoan',
                    style: TextStyle(
                      fontSize: 11,
                      color: Colors.grey,
                    ),
                  ),

                  SizedBox(height: 15),

                  // Username
                  TextField(
                    controller: usernameController,

                    decoration: InputDecoration(
                      hintText: 'username',

                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 10,
                      ),

                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),

                  SizedBox(height: 10),

                  // Password
                  TextField(
                    controller: passwordController,

                    obscureText: !showPassword,

                    decoration: InputDecoration(
                      hintText: 'password',

                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 10,
                      ),

                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),

                      suffixIcon: IconButton(
                        icon: Icon(
                          showPassword
                              ? Icons.visibility
                              : Icons.visibility_off,
                          size: 18,
                        ),

                        onPressed: () {
                          setState(() {
                            showPassword = !showPassword;
                          });
                        },
                      ),
                    ),
                  ),

                  SizedBox(height: 12),

                  // Login
                  SizedBox(
                    width: 120,
                    height: 35,

                    child: ElevatedButton(
                      onPressed: login,

                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF2196F3),
                        foregroundColor: Colors.white,

                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),

                      child: Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}