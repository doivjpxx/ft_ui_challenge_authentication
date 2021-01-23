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
