import 'package:flutter/material.dart';
import '../models/data.dart';

class DetailPage extends StatelessWidget {
  Menu menu;

  DetailPage({required this.menu});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFF5FF),

      appBar: AppBar(
        backgroundColor: Color(0xFFFFF5FF),
        elevation: 0,

        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),

          onPressed: () {
            Navigator.pop(context);
          },
        ),

        title: Text(
          menu.name,

          style: TextStyle(
            color: Colors.black,
            fontSize: 15,
          ),
        ),
      ),

      body: Padding(
        padding: EdgeInsets.all(10),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),

              child: Image.network(
                menu.image,

                width: double.infinity,
                height: 160,

                fit: BoxFit.cover,
              ),
            ),

            SizedBox(height: 10),

            Text(
              menu.name,

              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 3),

            Text(
              menu.category,

              style: TextStyle(
                fontSize: 10,
                color: Colors.grey,
              ),
            ),

            SizedBox(height: 5),

            Text(
              menu.price,

              style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),

            SizedBox(height: 10),

            Text(
              'Deskripsi',

              style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 5),

            Text(
              menu.description,

              style: TextStyle(
                fontSize: 10,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}