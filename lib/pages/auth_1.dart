import 'package:fl_ui_challenge_authentication/constants/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyAuthentication1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[_buildTopSection(), _buildSecondSection()],
    ));
  }

  Widget _buildSecondSection() {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(16.0),
        width: double.infinity,
        decoration: BoxDecoration(color: Colors.white),
        child: Column(
          children: <Widget>[
            Spacer(),
            Text('or if you are new here..'),
            SizedBox(
              height: 10.0,
            ),
            SizedBox(
              width: double.infinity,
              child: RaisedButton(
                onPressed: () {},
                color: Colors.pink,
                child: Text('Sign up', style: TextStyle(color: Colors.white)),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text('or continue with..'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton.icon(
                    onPressed: () {},
                    color: Colors.red,
                    icon: FaIcon(
                      FontAwesomeIcons.google,
                      color: Colors.white,
                    ),
                    label: Text(
                      'Google',
                      style: TextStyle(color: Colors.white),
                    )),
                SizedBox(
                  width: 10.0,
                ),
                RaisedButton.icon(
                    onPressed: () {},
                    color: Colors.indigo,
                    icon: FaIcon(
                      FontAwesomeIcons.facebook,
                      color: Colors.white,
                    ),
                    label: Text(
                      'Facebook',
                      style: TextStyle(color: Colors.white),
                    ))
              ],
            ),
            Spacer(
              flex: 2,
            )
          ],
        ),
      ),
    );
  }

  Widget _buildTopSection() {
    return Expanded(
      child: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.pink,
                image: DecorationImage(
                    image: NetworkImage(backgroundImages[2]),
                    fit: BoxFit.cover)),
            foregroundDecoration:
                BoxDecoration(color: Colors.pink.withAlpha(100)),
          ),
          Container(
            padding: const EdgeInsets.all(16.0),
            width: double.infinity,
            child: Column(
              children: <Widget>[
                Spacer(
                  flex: 2,
                ),
                Text(
                  "existing members",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16.0,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 10.0,
                ),
                SizedBox(
                  width: double.infinity,
                  child: RaisedButton(
                    onPressed: () {},
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                    padding: const EdgeInsets.all(16.0),
                    child: Text('Login', style: TextStyle(color: Colors.pink)),
                  ),
                ),
                Spacer()
              ],
            ),
          )
        ],
      ),
    );
  }
}
