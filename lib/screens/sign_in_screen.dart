import 'package:flutter/material.dart';
import 'package:punk_panda_clone/chatting_screens/chat_home_page.dart';
import 'package:punk_panda_clone/components/mobile_number_search.dart';
import 'package:punk_panda_clone/constants.dart';

class SignInScreen extends StatefulWidget {
  static const String id = 'login_screen';

  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(
            context,
            ChatHomeScreen.id,
          );
        },
        backgroundColor: Colors.blue,
        child: const Icon(
          Icons.arrow_forward_sharp,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(top: 80.0, left: 5.0, bottom: 30.0),
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
          Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.only(top: 100.0, right: 150.0),
                child: const Text(
                  'Enter your mobile number',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(
                height: 3.0,
              ),
              const MobileNumberInput(),
            ],
          ),
        ],
      ),
    );
  }
}
