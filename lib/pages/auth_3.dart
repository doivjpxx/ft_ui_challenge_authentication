import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants/assets.dart';

const double kToolbarHeight = 56.0;

class MyAuthentication3 extends StatefulWidget {
  @override
  _MyAuthentication3State createState() => _MyAuthentication3State();
}

class _MyAuthentication3State extends State<MyAuthentication3> {
  final String backImg = room4;
  bool formVisible;
  int _formsIndex;

  @override
  void initState() {
    super.initState();
    formVisible = false;
    _formsIndex = 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage(room4),
          fit: BoxFit.cover,
        )),
        child: Stack(
          children: <Widget>[
            Container(
              color: Colors.black54,
              child: Column(
                children: <Widget>[
                  const SizedBox(
                    height: kToolbarHeight + 40,
                  ),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Text(
                          "Welcome",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 30.0,
                          ),
                        ),
                        const SizedBox(height: 10.0),
                        Text(
                          "Welcome to this awesome login app. \n You are awesome",
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 18.0,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Row(
                    children: <Widget>[
                      const SizedBox(
                        width: 10.0,
                      ),
                      Expanded(
                        child: MaterialButton(
                          color: Colors.red,
                          textColor: Colors.white,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Text("Login"),
                          onPressed: () {
                            setState(() {
                              formVisible = true;
                              _formsIndex = 1;
                            });
                          },
                        ),
                      ),
                      const SizedBox(width: 10.0),
                      Expanded(
                        child: MaterialButton(
                          color: Colors.grey.shade700,
                          textColor: Colors.white,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Text("Signup"),
                          onPressed: () {
                            setState(() {
                              formVisible = true;
                              _formsIndex = 2;
                            });
                          },
                        ),
                      ),
                      const SizedBox(width: 10.0),
                    ],
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  OutlinedButton.icon(
                    style: OutlinedButton.styleFrom(
                        side: BorderSide(color: Colors.red),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        primary: Colors.white),
                    icon: FaIcon(FontAwesomeIcons.google),
                    label: Text("Continue with Google"),
                    onPressed: () {},
                  ),
                  const SizedBox(height: 30.0),
                ],
              ),
            ),
            AnimatedSwitcher(
              duration: Duration(milliseconds: 200),
              child: (!formVisible)
                  ? null
                  : Container(
                      color: Colors.black54,
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              MaterialButton(
                                textColor: _formsIndex == 1
                                    ? Colors.white
                                    : Colors.black,
                                color: _formsIndex == 1
                                    ? Colors.red
                                    : Colors.white,
                                child: Text("Login"),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0)),
                                onPressed: () {
                                  setState(() {
                                    _formsIndex = 1;
                                  });
                                },
                              ),
                              const SizedBox(width: 10.0),
                              MaterialButton(
                                textColor: _formsIndex == 2
                                    ? Colors.white
                                    : Colors.black,
                                color: _formsIndex == 2
                                    ? Colors.red
                                    : Colors.white,
                                child: Text("Signup"),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0)),
                                onPressed: () {
                                  setState(() {
                                    _formsIndex = 2;
                                  });
                                },
                              ),
                              const SizedBox(width: 10.0),
                              IconButton(
                                color: Colors.white,
                                icon: Icon(Icons.clear),
                                onPressed: () {
                                  setState(() {
                                    formVisible = false;
                                  });
                                },
                              )
                            ],
                          ),
                          Container(
                            child: AnimatedSwitcher(
                              duration: Duration(milliseconds: 300),
                              child:
                                  _formsIndex == 1 ? LoginForm() : SignUpForm(),
                            ),
                          )
                        ],
                      ),
                    ),
            )
          ],
        ),
      ),
    );
  }
}

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(16.0),
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              hintText: "Enter email",
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 10.0),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: "Enter password",
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 10.0),
          RaisedButton(
            color: Colors.red,
            textColor: Colors.white,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Text("Login"),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class SignUpForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(16.0),
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              hintText: "Enter email",
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 10.0),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: "Enter password",
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 10.0),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: "Confirm password",
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 10.0),
          MaterialButton(
            color: Colors.red,
            textColor: Colors.white,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Text("Signup"),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
