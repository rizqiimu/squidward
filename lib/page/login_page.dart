import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_workshop/login/login_bloc.dart';
import 'package:flutter_workshop/login/login_state.dart';
import 'package:flutter_workshop/page/homepage.dart';
import '../page/styles.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<LoginBloc, LoginState>(
        builder: (context, state) {
          if (state is LoginInitial) {
            return SingleChildScrollView(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[                    
                    new CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius: 48.0,
                      child: Image.asset('assets/eg1.jpg'),
                    ),
                    SizedBox(height: 25),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 32),
                      child: Material(
                        elevation: 2.0,
                        borderRadius: BorderRadius.circular(32),
                        child: TextFormField(
                            controller: _email,
                            decoration: InputDecoration(
                                hintText: 'Email',
                                contentPadding:
                                    EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.circular(32.0)))),
                      ),
                    ),
                    SizedBox(height: 25),
                      Padding(
                      padding: EdgeInsets.symmetric(horizontal: 32),
                      child: Material(
                        elevation: 2.0,
                        borderRadius: BorderRadius.circular(32),
                        child: TextFormField(
                            controller: _password,
                            decoration: InputDecoration(
                                hintText: 'Email',
                                contentPadding:
                                    EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.circular(32.0)))),
                      ),
                    ),
                    SizedBox(height: 25),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Container(
                        child: RaisedButton(
                          color: Colors.pinkAccent,
                          child: Text('Login', style: TextStyle(
                            color: Colors.white,
                          )),
                          onPressed: () {
                            Navigator.push(context, 
                            MaterialPageRoute(builder: (context) => HomePage()),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
