import 'package:fl_ui_challenge_authentication/constants/assets.dart';
import 'package:fl_ui_challenge_authentication/widgets/network_image.dart';
import 'package:flutter/material.dart';

class MyAuthentication4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                SizedBox(
                  height: 50,
                ),
                Container(
                  width: 200,
                  child: PNetworkImage(rocket),
                ),
                SizedBox(
                  height: 50,
                ),
                ListTile(
                  title: TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        hintText: "Email address:",
                        hintStyle: TextStyle(color: Colors.white70),
                        filled: true,
                        border: InputBorder.none,
                        icon: Icon(
                          Icons.email,
                          color: Colors.white30,
                        )),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                // Divider(
                //   color: Colors.grey.shade600,
                // ),
                ListTile(
                    title: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      hintText: "Password:",
                      hintStyle: TextStyle(color: Colors.white70),
                      filled: true,
                      border: InputBorder.none,
                      icon: Icon(
                        Icons.lock,
                        color: Colors.white30,
                      )),
                )),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 40.0),
                  width: double.infinity,
                  child: MaterialButton(
                      onPressed: () {},
                      color: Colors.cyan,
                      child: Text(
                        'Login',
                        style: TextStyle(color: Colors.white70, fontSize: 16.0),
                      )),
                ),
                Text(
                  'Forgot your password?',
                  style: TextStyle(color: Colors.grey.shade500),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
