import 'package:fl_ui_challenge_authentication/widgets/wave_clip.dart';
import 'package:flutter/material.dart';

class MyAuthentication10 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Stack(
            children: _buildPathes(),
          ),
          const SizedBox(
            height: 30.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Material(
              elevation: 2.0,
              borderRadius: BorderRadius.all(Radius.circular(30.0)),
              child: TextField(
                cursorColor: Colors.deepOrange,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.mail, color: Colors.red),
                    hintText: 'Email',
                    border: InputBorder.none,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 25, vertical: 13)),
              ),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Material(
              elevation: 2.0,
              borderRadius: BorderRadius.all(Radius.circular(30.0)),
              child: TextField(
                obscureText: true,
                cursorColor: Colors.deepOrange,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock, color: Colors.red),
                    hintText: 'Password',
                    border: InputBorder.none),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 32.0, vertical: 30.0),
            child: MaterialButton(
              padding: const EdgeInsets.all(16.0),
              onPressed: () {},
              color: Color(0xffff3a5a),
              textColor: Colors.white,
              child: Text(
                'Login',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
            ),
          ),
          Text(
            'forgot password?'.toUpperCase(),
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 12.0, color: Colors.red, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 40.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Don\'t have an account?',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.normal)),
              const SizedBox(
                width: 5.0,
              ),
              Text('sign up'.toUpperCase(),
                  style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      decoration: TextDecoration.underline))
            ],
          )
        ],
      ),
    );
  }
}

extension MoreMyAuthentication10 on MyAuthentication10 {
  List<Widget> _buildPathes() {
    return [
      ClipPath(
        clipper: WaveClipper2(),
        child: Container(
          child: Column(),
          width: double.infinity,
          height: 300,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0x22ff3a5a), Color(0x22fe494d)])),
        ),
      ),
      ClipPath(
        clipper: WaveClipper3(),
        child: Container(
          child: Column(),
          width: double.infinity,
          height: 300,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0x44ff3a5a), Color(0x44fe494d)])),
        ),
      ),
      ClipPath(
        clipper: WaveClipper1(),
        child: Container(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 40,
              ),
              Icon(
                Icons.fastfood,
                color: Colors.white,
                size: 60,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Taste Me",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 30),
              ),
            ],
          ),
          width: double.infinity,
          height: 300,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xffff3a5a), Color(0xfffe494d)])),
        ),
      )
    ];
  }
}
