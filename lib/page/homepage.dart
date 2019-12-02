

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_workshop/page/login_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          child: Text('Logout'),
          color: Colors.pinkAccent,
          onPressed: () {
            Navigator.push(context, 
            MaterialPageRoute(builder: (context) => LoginScreen())
            );
          }
        ),
      ),
    );
  }

}