import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyAuthentication9 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          const SizedBox(height: 100.0),
          Stack(
            children: <Widget>[
              Positioned(
                top: 15.0,
                left: 22.0,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(20.0)),
                  width: 70.0,
                  height: 20.0,
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 32.0),
                  child: Text(
                    'Sign In',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8.0),
            child: TextField(
              decoration: InputDecoration(
                  labelText: "Email",
                  floatingLabelBehavior: FloatingLabelBehavior.auto),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8.0),
            child: TextField(
              decoration: InputDecoration(
                  labelText: "Password",
                  floatingLabelBehavior: FloatingLabelBehavior.auto),
            ),
          ),
          Container(
              padding: const EdgeInsets.only(right: 32.0),
              alignment: Alignment.centerRight,
              child: Text("Forgot your password?")),
          const SizedBox(height: 120.0),
          Align(
            alignment: Alignment.centerRight,
            child: MaterialButton(
              color: Colors.yellow,
              elevation: 0,
              padding: const EdgeInsets.fromLTRB(40.0, 16.0, 32.0, 16.0),
              onPressed: () {},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      bottomLeft: Radius.circular(30.0))),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text('Sign in'.toUpperCase()),
                  const SizedBox(width: 40.0),
                  FaIcon(
                    FontAwesomeIcons.arrowRight,
                    size: 18.0,
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 50.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              OutlinedButton.icon(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                      primary: Colors.red,
                      side: BorderSide(color: Colors.red),
                      padding: const EdgeInsets.symmetric(
                        vertical: 8.0,
                        horizontal: 30.0,
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0))),
                  icon: FaIcon(
                    FontAwesomeIcons.google,
                    size: 18.0,
                  ),
                  label: Text('Google')),
              const SizedBox(
                width: 10.0,
              ),
              OutlinedButton.icon(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 30.0),
                      primary: Colors.indigo,
                      side: BorderSide(color: Colors.indigo),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0))),
                  icon: FaIcon(
                    FontAwesomeIcons.facebook,
                    size: 18.0,
                  ),
                  label: Text('Facebook'))
            ],
          ),
          Expanded(
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 20.0),
                    child: Text('Copyright @ PhongDev'),
                  )))
        ],
      ),
    );
  }
}
