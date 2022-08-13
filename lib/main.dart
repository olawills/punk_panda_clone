import 'package:flutter/material.dart';
import 'package:punk_panda_clone/chatting_screens/chat_home_page.dart';
import 'package:punk_panda_clone/screens/splash_screen.dart';
import 'package:punk_panda_clone/screens/welcome_screen.dart';
import 'package:punk_panda_clone/screens/sign_in_screen.dart';
import 'package:punk_panda_clone/screens/sign_up.dart';

void main() {
  runApp(const PunkPanda());
}

class PunkPanda extends StatelessWidget {
  const PunkPanda({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      initialRoute: SplashScreen.id,
      routes: {
        SplashScreen.id: (context) => const SplashScreen(),
        WelcomeScreen.id: (context) => const WelcomeScreen(),
        SignInScreen.id: (context) => const SignInScreen(),
        SignUpScreen.id: (context) => const SignUpScreen(),
        ChatHomeScreen.id: (context) => const ChatHomeScreen(),
      },
    );
  }
}
