import 'package:flutter/material.dart';
import 'package:punk_panda_clone/chatting_screens/chat_home_page.dart';
import 'package:punk_panda_clone/constants.dart';
import 'package:punk_panda_clone/screens/phone_verify_screen.dart';

class SignUpScreen extends StatefulWidget {
  static const String id = 'signup_screen';

  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(
                top: 80.0, left: 5.0, right: 10.0, bottom: 30.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.pop(
                      context,
                    );
                  },
                  child: kBackIconButton,
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 10.0),
                  child: kBackButtonText,
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 50.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Text(
                  'Enter Pandapal invitation code',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22.0,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                VerifyCode(),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Material(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(30),
            child: MaterialButton(
              textColor: Colors.black,
              child: Container(
                width: 100,
                height: 40,
                alignment: Alignment.center,
                child: const Text(
                  'NEXT',
                  style: TextStyle(
                    fontSize: 18.0,
                    // color: Colors.black,
                  ),
                ),
              ),
              onPressed: () {
                Navigator.popAndPushNamed(
                  context,
                  ChatHomeScreen.id,
                );
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 70.0),
            child: Text(
              'You are invited by:',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 20.0,
              ),
            ),
          ),
          const SafeArea(
            child: Divider(
              indent: 12.0,
              endIndent: 12.0,
              thickness: 0.7,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
