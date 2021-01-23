import 'package:fl_ui_challenge_authentication/constants/assets.dart';
import 'package:fl_ui_challenge_authentication/widgets/network_image.dart';
import 'package:fl_ui_challenge_authentication/widgets/rounded_diagonal_path_clipper.dart';
import 'package:flutter/material.dart';

class MyAuthentication5 extends StatefulWidget {
  @override
  _MyAuthentication5State createState() => _MyAuthentication5State();
}

class _MyAuthentication5State extends State<MyAuthentication5> {
  int _formIndex;

  @override
  void initState() {
    super.initState();
    _formIndex = 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      body: ListView(
        physics: const NeverScrollableScrollPhysics(),
        children: <Widget>[
          SizedBox(
            height: 30.0,
          ),
          CircleAvatar(
            child: PNetworkImage(origami),
            maxRadius: 50,
            backgroundColor: Colors.transparent,
          ),
          SizedBox(
            height: 20.0,
          ),
          _buildForm(_formIndex),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              MaterialButton(
                onPressed: () {
                  setState(() {
                    if (_formIndex == 1) {
                      _formIndex = 2;
                    } else {
                      _formIndex = 1;
                    }
                  });
                },
                child: Text(_formIndex == 1 ? "Sign Up" : "Login",
                    style: TextStyle(color: Colors.blue, fontSize: 18.0)),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _buildForm(int index) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: Stack(
        children: <Widget>[
          ClipPath(
            clipper: RoundedDiagonalPathClipper(),
            child: Container(
              height: _formIndex == 1 ? 400.0 : 500.0,
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(40.0)),
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: index == 1 ? _buildFormLogin() : _buildSignupForm(),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 40,
                backgroundColor: Colors.blue.shade600,
                child: Icon(Icons.person),
              )
            ],
          ),
          Container(
            height: _formIndex == 1 ? 420.0 : 520.0,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: MaterialButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0)),
                child: Text(_formIndex == 1 ? "Login" : "Register",
                    style: TextStyle(color: Colors.white70)),
                color: Colors.blue,
              ),
            ),
          )
        ],
      ),
    );
  }
}

extension MoreMyAuthentication5 on _MyAuthentication5State {
  List<Widget> _buildFormLogin() {
    return <Widget>[
      const SizedBox(
        height: 20.0,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
          decoration: InputDecoration(
              hintText: 'Email address',
              hintStyle: TextStyle(color: Colors.blue.shade200),
              border: InputBorder.none,
              icon: Icon(
                Icons.mail,
                color: Colors.blue.shade200,
              )),
        ),
      ),
      const SizedBox(
        height: 20.0,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
          decoration: InputDecoration(
              hintText: 'Password',
              hintStyle: TextStyle(color: Colors.blue.shade200),
              border: InputBorder.none,
              icon: Icon(
                Icons.lock,
                color: Colors.blue.shade200,
              )),
        ),
      ),
      const SizedBox(
        height: 20.0,
      ),
      Container(
        child: Divider(
          color: Colors.blue.shade400,
        ),
        padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 10.0),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Text(
              'Forgot password',
              style: TextStyle(color: Colors.black45),
            ),
          )
        ],
      ),
      SizedBox(
        height: 10.0,
      ),
    ];
  }

  List<Widget> _buildSignupForm() {
    return <Widget>[
      const SizedBox(
        height: 20.0,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
          decoration: InputDecoration(
              hintText: 'Email address',
              hintStyle: TextStyle(color: Colors.blue.shade200),
              border: InputBorder.none,
              icon: Icon(
                Icons.mail,
                color: Colors.blue.shade200,
              )),
        ),
      ),
      const SizedBox(
        height: 20.0,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
          decoration: InputDecoration(
              hintText: 'Password',
              hintStyle: TextStyle(color: Colors.blue.shade200),
              border: InputBorder.none,
              icon: Icon(
                Icons.lock,
                color: Colors.blue.shade200,
              )),
        ),
      ),
      const SizedBox(
        height: 20.0,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
          decoration: InputDecoration(
              hintText: 'Confirm password',
              hintStyle: TextStyle(color: Colors.blue.shade200),
              border: InputBorder.none,
              icon: Icon(
                Icons.lock,
                color: Colors.blue.shade200,
              )),
        ),
      ),
      const SizedBox(
        height: 20.0,
      ),
      Container(
        child: Divider(
          color: Colors.blue.shade400,
        ),
        padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 10.0),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Text(
              'Forgot password',
              style: TextStyle(color: Colors.black45),
            ),
          )
        ],
      ),
      SizedBox(
        height: 10.0,
      ),
    ];
  }
}

class SignupOnePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      body: Container(),
    );
  }
}
