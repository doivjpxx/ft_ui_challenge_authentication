import 'package:fl_ui_challenge_authentication/constants/assets.dart';
import 'package:flutter/material.dart';

class MyAuthentication7 extends StatelessWidget {
  final String background = loginBack;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(background), fit: BoxFit.cover)),
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            color: Colors.black.withOpacity(0.7),
          ),
          SingleChildScrollView(
            padding: EdgeInsets.all(20.0),
            physics: BouncingScrollPhysics(),
            child: Container(
              child: Column(
                // mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 100.0,
                  ),
                  Text(
                    "Welcome Back",
                    style: TextStyle(color: Colors.white, fontSize: 28.0),
                  ),
                  Text(
                    "Sign in to continue",
                    style: TextStyle(color: Colors.white, fontSize: 16.0),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  TextField(
                      decoration: InputDecoration(
                          hintText: 'Username',
                          hintStyle: TextStyle(color: Colors.white70),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white54)))),
                  SizedBox(
                    height: 10.0,
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: 'Password',
                        hintStyle: TextStyle(color: Colors.white70),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white54))),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "Forgot your password?",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: MaterialButton(
                      onPressed: () {},
                      color: Colors.white,
                      child: Text('Sign in'.toUpperCase()),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Don\'t have an account ?',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Text('Sign up'.toUpperCase(),
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold)),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
