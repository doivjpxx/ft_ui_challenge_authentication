import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyAuthentication6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: <Color>[
                  Colors.deepPurple,
                  Colors.deepPurple.shade200,
                  Colors.indigo.shade200,
                  Colors.purple.shade200
                ],
              ),
            ),
          ),
          ListView(
            children: <Widget>[
              Container(
                height: 400.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Login",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white70,
                            fontWeight: FontWeight.bold,
                            fontSize: 28.0)),
                    Card(
                      margin: EdgeInsets.only(left: 30, right: 30, top: 30),
                      elevation: 11,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(40))),
                      child: TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.person,
                              color: Colors.black26,
                            ),
                            suffixIcon: Icon(
                              Icons.check_circle,
                              color: Colors.black26,
                            ),
                            hintText: "Username",
                            hintStyle: TextStyle(color: Colors.black26),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40.0)),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 16.0)),
                      ),
                    ),
                    Card(
                      margin:
                          const EdgeInsets.only(left: 30, right: 30, top: 30),
                      elevation: 11,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(40))),
                      child: TextField(
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: 'Password',
                            hintStyle: TextStyle(color: Colors.black26),
                            prefixIcon: Icon(Icons.lock, color: Colors.black26),
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 16.0),
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(40.0)))),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(30.0),
                      child: MaterialButton(
                        color: Colors.pink,
                        padding: EdgeInsets.all(16.0),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(40.0))),
                        onPressed: () {},
                        child: Text('Login',
                            style: TextStyle(color: Colors.white70)),
                      ),
                    ),
                    Text(
                      'Forgot your password?',
                      style: TextStyle(color: Colors.white70),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  children: <Widget>[
                    Text("or, connect with"),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                              child: MaterialButton(
                                  onPressed: () {},
                                  textColor: Colors.white,
                                  color: Colors.indigo,
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(40)),
                                  ),
                                  child: Wrap(
                                    crossAxisAlignment:
                                        WrapCrossAlignment.center,
                                    children: [
                                      FaIcon(FontAwesomeIcons.facebook),
                                      const SizedBox(
                                        width: 5.0,
                                      ),
                                      Text('Facebook'),
                                    ],
                                  ))),
                          SizedBox(
                            width: 10.0,
                          ),
                          Expanded(
                              child: MaterialButton(
                                  onPressed: () {},
                                  textColor: Colors.white,
                                  color: Colors.blue,
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(40)),
                                  ),
                                  child: Wrap(
                                    crossAxisAlignment:
                                        WrapCrossAlignment.center,
                                    children: [
                                      FaIcon(FontAwesomeIcons.twitter),
                                      const SizedBox(
                                        width: 5.0,
                                      ),
                                      Text('Twitter'),
                                    ],
                                  ))),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Dont have an account?"),
                        MaterialButton(
                          child: Text("Sign up"),
                          textColor: Colors.indigo,
                          onPressed: () {},
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
