import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 11,
        itemBuilder: (context, index) {
          return ListTile(
            title: _buildText(index),
            onTap: () => _routeChange(context, index),
          );
        },
      ),
    );
  }

  Text _buildText(int index) {
    var _title = 'Auth ${index + 1}';
    return Text(_title);
  }

  _routeChange(BuildContext context, int index) {
    switch (index) {
      case 0:
        Navigator.pushNamed(context, '/first');
        break;
      case 1:
        Navigator.pushNamed(context, '/second');
        break;
      case 2:
        Navigator.pushNamed(context, '/third');
        break;
      case 3:
        Navigator.pushNamed(context, '/four');
        break;
      case 4:
        Navigator.pushNamed(context, '/five');
        break;
      case 5:
        Navigator.pushNamed(context, '/six');
        break;
      case 6:
        Navigator.pushNamed(context, '/seven');
        break;
      case 7:
        Navigator.pushNamed(context, '/eight');
        break;
      case 8:
        Navigator.pushNamed(context, '/nine');
        break;
      case 9:
        Navigator.pushNamed(context, '/ten');
        break;
      case 10:
        Navigator.pushNamed(context, '/eleven');
        break;
      default:
        break;
    }
  }
}
