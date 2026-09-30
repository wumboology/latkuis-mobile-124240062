import 'package:flutter/material.dart';
import 'login.dart';

class ProfilePage extends StatelessWidget {
  String username;

  ProfilePage({required this.username});

  void logout(BuildContext context) {
    Navigator.pushAndRemoveUntil(
      context,

      MaterialPageRoute(
        builder: (context) => LoginPage(),
      ),

      (route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFF5FF),

      appBar: AppBar(
        backgroundColor: Color(0xFFFFF5FF),
        elevation: 0,

        title: Text(
          'Profile',

          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
        ),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Container(
              width: 60,
              height: 60,

              decoration: BoxDecoration(
                color: Color(0xFFE5D5FF),
                shape: BoxShape.circle,
              ),

              child: Icon(
                Icons.person,
                size: 35,
                color: Color(0xFF7352B8),
              ),
            ),

            SizedBox(height: 10),

            Text(
              'Username',

              style: TextStyle(
                fontSize: 10,
                color: Colors.grey,
              ),
            ),

            SizedBox(height: 3),

            Text(
              username,

              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 12),

            OutlinedButton(
              onPressed: () {
                logout(context);
              },

              style: OutlinedButton.styleFrom(
                foregroundColor: Color(0xFF7352B8),
                side: BorderSide(
                  color: Color(0xFFE0D5ED),
                ),
              ),

              child: Row(
                mainAxisSize: MainAxisSize.min,

                children: [
                  Icon(
                    Icons.logout,
                    size: 13,
                  ),

                  SizedBox(width: 5),

                  Text(
                    'Logout',
                    style: TextStyle(
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}