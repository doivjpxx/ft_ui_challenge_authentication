import 'package:animator/animator.dart';
import 'package:fl_ui_challenge_authentication/constants/assets.dart';
import 'package:flutter/material.dart';

class MyAuthentication11 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(images[0]), fit: BoxFit.cover)),
          foregroundDecoration: BoxDecoration(
            color: Colors.black.withOpacity(0.7),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: kToolbarHeight),
              child: Text(
                'Beautiful App',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              child: Animator<double>(
                triggerOnInit: true,
                curve: Curves.easeIn,
                tween: Tween<double>(begin: -1, end: 0),
                builder: (context, state, child) {
                  return FractionalTranslation(
                    translation: Offset(state.value, 0),
                    child: child,
                  );
                },
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: ListView(
                    padding: const EdgeInsets.all(32.0),
                    physics:
                        MediaQuery.of(context).viewInsets == EdgeInsets.zero
                            ? NeverScrollableScrollPhysics()
                            : null,
                    shrinkWrap: true,
                    children: <Widget>[
                      const SizedBox(height: kToolbarHeight),
                      Text(
                        "Namaste!",
                        style: Theme.of(context)
                            .textTheme
                            .headline4
                            .copyWith(color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "Welcome to this awesome app. We are so happy that you are using our app.",
                        style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 16.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 20.0),
                      TextField(
                        decoration: InputDecoration(
                          hintText: "Username",
                          suffixIcon:
                              Icon(Icons.person, color: Colors.blueGrey),
                          hintStyle: TextStyle(color: Colors.blueGrey),
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 16.0, horizontal: 32.0),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0)),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blueGrey),
                            borderRadius: BorderRadius.circular(40.0),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      TextField(
                        decoration: InputDecoration(
                            hintText: "Password",
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 16.0, horizontal: 32.0),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.0)),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.blueGrey),
                              borderRadius: BorderRadius.circular(40.0),
                            ),
                            hintStyle: TextStyle(color: Colors.blueGrey),
                            suffixIcon:
                                Icon(Icons.lock, color: Colors.blueGrey)),
                      ),
                      const SizedBox(height: 20.0),
                      MaterialButton(
                        onPressed: () {},
                        textColor: Colors.white,
                        child: Text('Create new account'),
                      )
                    ],
                  ),
                ),
              ),
            ),
            MaterialButton(
              padding: const EdgeInsets.all(32.0),
              elevation: 0,
              textColor: Colors.white,
              color: Colors.deepOrange,
              child: Text("Continue".toUpperCase()),
              onPressed: () {},
            )
          ],
        )
      ]),
    );
  }
}
