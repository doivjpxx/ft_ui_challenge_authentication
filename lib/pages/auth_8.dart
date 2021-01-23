import 'package:fl_ui_challenge_authentication/constants/assets.dart';
import 'package:fl_ui_challenge_authentication/widgets/network_image.dart';
import 'package:flutter/material.dart';

class MyAuthentication8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.lightGreen, Colors.green])),
      child: Column(
        children: [
          Container(
            height: 80.0,
            margin: const EdgeInsets.only(top: 40.0, bottom: 20.0),
            child: PNetworkImage(foodLogo),
          ),
          Text(
            "Good In Food".toUpperCase(),
            style: TextStyle(
                color: Colors.white70,
                fontSize: 24.0,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 40.0),
          TextField(
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white.withOpacity(0.1),
                prefixIcon: Container(
                    padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
                    margin: const EdgeInsets.only(right: 8.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30.0),
                            bottomLeft: Radius.circular(30.0),
                            topRight: Radius.circular(30.0),
                            bottomRight: Radius.circular(10.0))),
                    child: Icon(
                      Icons.person,
                      color: Colors.lightGreen,
                    )),
                hintText: 'Enter your email',
                hintStyle: TextStyle(color: Colors.white70),
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                contentPadding: const EdgeInsets.all(16.0)),
          ),
          const SizedBox(
            height: 10.0,
          ),
          TextField(
            decoration: InputDecoration(
                hintText: 'Enter your password',
                hintStyle: TextStyle(color: Colors.white70),
                filled: true,
                fillColor: Colors.white.withOpacity(0.1),
                prefixIcon: Container(
                  margin: const EdgeInsets.only(right: 8.0),
                  padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.0),
                          topRight: Radius.circular(30.0),
                          bottomLeft: Radius.circular(30.0),
                          bottomRight: Radius.circular(10.0))),
                  child: Icon(
                    Icons.lock,
                    color: Colors.lightGreen,
                  ),
                ),
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(20.0)))),
          ),
          const SizedBox(
            height: 30.0,
          ),
          Container(
            width: double.infinity,
            child: MaterialButton(
              padding: const EdgeInsets.all(20.0),
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30.0))),
              onPressed: () {},
              child: Text('login'.toUpperCase()),
            ),
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              MaterialButton(
                textColor: Colors.white70,
                onPressed: () {},
                child: Text('Create account'.toUpperCase()),
              ),
              Container(
                color: Colors.white54,
                width: 2.0,
                height: 20.0,
              ),
              MaterialButton(
                textColor: Colors.white70,
                onPressed: () {},
                child: Text('Forgot password'.toUpperCase()),
              )
            ],
          )
        ],
      ),
    ));
  }
}
