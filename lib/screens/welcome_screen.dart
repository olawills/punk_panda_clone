import 'package:flutter/material.dart';
import 'package:punk_panda_clone/constants.dart';
import 'package:punk_panda_clone/screens/sign_in_screen.dart';
import 'package:punk_panda_clone/screens/sign_up.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';

  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.fromLTRB(20.0, 60.0, 20.0, 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SizedBox(
                  width: 90.0,
                  height: 35.0,
                  child: Material(
                    elevation: 3.0,
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(3.0),
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.pushNamed(
                          context,
                          SignInScreen.id,
                        );
                      },
                      child: const Text(
                        'Sign In',
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 90.0,
                  height: 35.0,
                  child: Material(
                    elevation: 3.0,
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(3.0),
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.pushNamed(
                          context,
                          SignUpScreen.id,
                        );
                      },
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 130.0),
            child: Column(
              children: [
                Image.asset(
                  'images/logo.png',
                  height: 140.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 90.0),
                  child: Row(
                    children: const <Widget>[
                      kTextStyle,
                      kTextStyleSecond,
                    ],
                  ),
                ),
                const Text(
                  'Use-it-Share-it-Own-it',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
