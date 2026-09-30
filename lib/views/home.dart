import 'package:flutter/material.dart';
import '../models/data.dart';
import 'detail.dart';

class HomePage extends StatelessWidget {
  String username;

  HomePage({required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFF5FF),

      appBar: AppBar(
        backgroundColor: Color(0xFFFFF5FF),
        elevation: 0,

        title: Text(
          'Home',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
        ),
      ),

      body: ListView.builder(
        itemCount: menus.length,

        itemBuilder: (context, index) {
          return ListTile(
            contentPadding: EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 2,
            ),

            onTap: () {
              Navigator.push(
                context,

                MaterialPageRoute(
                  builder: (context) => DetailPage(
                    menu: menus[index],
                  ),
                ),
              );
            },

            leading: Image.network(
              menus[index].image,

              width: 35,
              height: 35,

              fit: BoxFit.cover,
            ),

            title: Text(
              menus[index].name,

              style: TextStyle(
                fontSize: 12,
              ),
            ),

            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text(
                  menus[index].category,

                  style: TextStyle(
                    fontSize: 9,
                    color: Colors.grey,
                  ),
                ),

                Text(
                  menus[index].price,

                  style: TextStyle(
                    fontSize: 9,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),

            trailing: Icon(
              Icons.arrow_forward_ios,
              size: 15,
              color: Colors.grey,
            ),
          );
        },
      ),
    );
  }
}